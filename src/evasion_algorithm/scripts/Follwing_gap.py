#!/usr/bin/python

import sys
import math

import rospy

from morai_msgs.msg import ObjectStatusList, ObjectStatus
from morai_msgs.msg import EgoVehicleStatus, FTGdata

import numpy as np

MaxLeftDegree = 56
MaxRightDegree = -56
MarginDist = 0.3

GainAlpha = 1.7
GainBeta = 0

class ObjInfo(object):
    def __init__(self, pos, heading, size, objType):
        self.posX = pos[0]
        self.posY = pos[1]
        self.heading = np.deg2rad(heading - 90)
        self.sizeX = size[0]
        self.sizeY = size[1]
        self.objType = objType
        self.maxCircleRadius = np.linalg.norm(size, ord=2) + MarginDist

        self.angleFromEgo = 0.0
        self.distFromEgo = 0.0

        self.marginAngleLeft = 0.0
        self.marginAngleRight = 0.0
        self.marginDist = 0.0

class FollowTheGap:
    def __init__(self):
        self.is_there_obj = False
        self.is_changing = False
        self.len_obj = 0
        self.list_obj = []
        self.pastResult = FTGdata()

        self.egoPosX = 0
        self.egoPosY = 0
        self.egoHeadAngle = 0

        self.guidAngleLeft = np.deg2rad(MaxLeftDegree)
        self.guidAngleRight = np.deg2rad(MaxRightDegree)

        self.vehicleSpecList = []
        self.vehicleSpecDict = {}

    def process(self):
        tmpResultMsg = FTGdata()
        tmpResultMsg.do_ca = False

        if self.len_obj > 0:
            focusObjs = self.filtering()
            lengthObjs = len(focusObjs)

            if lengthObjs < 1:
                return tmpResultMsg
            
            findNearObjs = sorted(focusObjs, key=lambda x: x.distFromEgo, reverse=False)
            maxIdx, gapList = self.calcGap(focusObjs, lengthObjs)
            tmpDist1 = 0
            tmpDist2 = 0
            sumAngle = 0
            tmpMarginAngle = 0

            if (maxIdx == 0):
                tmpDist1 = focusObjs[maxIdx].distFromEgo
                sumAngle = focusObjs[maxIdx].marginAngleLeft + self.guidAngleLeft
                tmpMarginAngle = focusObjs[maxIdx].marginAngleLeft

            elif(maxIdx == (len(gapList))):
                tmpDist2 = focusObjs[maxIdx-1].distFromEgo
                sumAngle = focusObjs[maxIdx-1].marginAngleRight + self.guidAngleRight
                tmpMarginAngle = self.guidAngleRight

            else:
                tmpIdx = maxIdx - 1
                tmpDist1 = np.square(focusObjs[tmpIdx].distFromEgo)
                tmpDist2 = np.square(focusObjs[tmpIdx-1].distFromEgo)
                sumAngle = focusObjs[tmpIdx].marginAngleLeft + focusObjs[tmpIdx-1].marginAngleRight
                tmpMarginAngle = focusObjs[tmpIdx].marginAngleLeft

            tmpNum = tmpDist1 + tmpDist2 * np.cos(sumAngle)
            tmpDen = np.sqrt(np.square(tmpDist1) + np.square(tmpDist2) + (2.0 * tmpDist1 * tmpDist2 * np.cos(sumAngle)))
            angleGapC = np.arccos(tmpNum/tmpDen) - (tmpMarginAngle)

            tmpResultMsg.do_ca = True
            tmpResultMsg.phi_gap = -angleGapC
            tmpResultMsg.ca_distance = findNearObjs[0].distFromEgo
            tmpResultMsg.ca_const_alpha = GainAlpha
            tmpResultMsg.ca_const_beta = GainBeta

        return tmpResultMsg

    def filtering(self):
        tmpNpArr = np.array(self.list_obj, dtype=object)
        self.list_obj = []
        tmpFilterAngle = []
        tmpFilterDist = []
        maxIdx = 0

        for obj in tmpNpArr:
            obj.angleFromEgo = np.arctan2((obj.posY - self.egoPosY), (obj.posX - self.egoPosX)) - self.egoHeadAngle
            tmpTarPt = []
            tmpTarPt = [obj.posX-self.egoPosX, obj.posY-self.egoPosY]
            obj.distFromEgo = np.linalg.norm(tmpTarPt, ord=2) - obj.maxCircleRadius

            tmpFilterAngle.append(obj.angleFromEgo)
            tmpFilterDist.append(obj.distFromEgo)

        tmpFilterAngle = np.asarray(tmpFilterAngle)
        tmpFilterDist = np.asarray(tmpFilterDist)
        tmpMaskAngle = np.logical_and((tmpFilterAngle < self.guidAngleLeft),
                                      (tmpFilterAngle > self.guidAngleRight))
        tmpMaskDist = (tmpFilterDist < 200)
        tmpMask = np.logical_and(tmpMaskDist, tmpMaskAngle)
        filteredDatas = tmpNpArr[tmpMask]
        rospy.loginfo('%d objects',len(filteredDatas))
        sortedDatas = []
        if(len(filteredDatas) > 0):
            sortedDatas = sorted(filteredDatas, key=lambda x: x.angleFromEgo, reverse=True)

        return sortedDatas

    def calcGap(self, objs, length):
        angleList = [[0, self.guidAngleLeft]]
        gapList = []

        for i in range(0, length):
            distDatas = np.array([(objs[i].posX - self.egoPosX),
                                  (objs[i].posY - self.egoPosY),
                                  (objs[i].maxCircleRadius + MarginDist)])
            distSquare = np.square(distDatas)
            tmpSquare = distSquare[0] + distSquare[1] - distSquare[2]

            if tmpSquare <= 0:
                tmpSquare = 0

            distSide = np.sqrt(tmpSquare)
            objs[i].marginDist = distSide
            deltaAngle = np.arctan2(objs[i].maxCircleRadius, distSide)
            tmpLeftAngle = objs[i].angleFromEgo + deltaAngle
            tmpRightAngle = objs[i].angleFromEgo - deltaAngle
            objs[i].marginAngleLeft = tmpLeftAngle
            objs[i].marginAngleRight = tmpRightAngle
            angleList.append([tmpLeftAngle, tmpRightAngle])
        angleList.append([self.guidAngleRight, 0])
        for i in range(1, len(angleList)):
            tmpDeltaAngleLeft = (angleList[i-1][1] - angleList[i][0])
            gapList.append(tmpDeltaAngleLeft)
        npGapList = np.asarray(gapList)
        maxIdx = np.argmax(npGapList)
        return (maxIdx, npGapList)

    def callbackObjInfo(self, datas):
        
        self.list_obj = []
        for data in datas.npc_list:
            posX = data.position.x
            posY = data.position.y
            heading = data.heading
            sizeX = data.size.x
            sizeY = data.size.y
            objType = data.type
            
            self.list_obj.append(
                ObjInfo([posX, posY], heading,
                        [sizeX, sizeY], objType))

        for data in datas.pedestrian_list:
            posX = data.position.x
            posY = data.position.y
            heading = data.heading
            sizeX = data.size.x
            sizeY = data.size.y
            objType = data.type
            
            self.list_obj.append(
                ObjInfo([posX, posY], heading,
                        [sizeX, sizeY], objType))

        for data in datas.obstacle_list:
            posX = data.position.x
            posY = data.position.y
            heading = data.heading
            sizeX = data.size.x
            sizeY = data.size.y
            objType = data.type
            self.list_obj.append(
                ObjInfo([posX, posY], heading,
                        [sizeX, sizeY], objType))
        self.len_obj = len(self.list_obj)

    def callbackEgoStatus(self, datas):
        self.egoHeadAngle = np.deg2rad(datas.heading - 90)
        self.egoPosX = datas.position.x
        self.egoPosY = datas.position.y

if __name__ == "__main__":

    rospy.init_node("FollowTheGap", anonymous=False)

    ftgCA = FollowTheGap()

    rospy.Subscriber("Object_topic_filter", ObjectStatusList, ftgCA.callbackObjInfo, queue_size=1)
    rospy.Subscriber("Ego_topic", EgoVehicleStatus, ftgCA.callbackEgoStatus, queue_size=1)
    pub_ca = rospy.Publisher("ctrl_collision", FTGdata, queue_size=1)

    rosrate = rospy.Rate(20)

    while not rospy.is_shutdown():
        tmpCaMsg = ftgCA.process()
        pub_ca.publish(tmpCaMsg)
        rosrate.sleep()

    sys.exit(0)
