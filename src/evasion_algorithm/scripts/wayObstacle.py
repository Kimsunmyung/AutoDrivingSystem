#!/usr/bin/python
import sys
import math

import rospy
from morai_msgs.msg import ObjectStatusList, ObjectStatus 
from morai_msgs.msg import EgoVehicleStatus, VehicleSpecDetails
from morai_msgs.msg import VehicleSpecDetail

import numpy as np


VehicleToFront = 3.57
VehicleWidth = 1.805
VehicleToRear = 0.785
Side_angle = 0



class NPCStatusFilter:
    def __init__(self, leftDeg, rightDeg):
        self.objList = ObjectStatusList()
        self.leftDeg = leftDeg
        self.rightDeg = rightDeg
        self.vehicleSpec = None

        self.egoHead = 0
        self.egoPose = None

    def calcAngleInRange(self, rad, offset, diffL, diffR):
        angleDiff = (rad - offset + float(3)*math.pi) % \
            (float(2)*math.pi) - math.pi
        return (-diffR <= angleDiff <= diffL)

    def callbackEgo(self, datas):
        self.egoHead = np.deg2rad(datas.heading - 90)
        self.egoPose = np.array([datas.position.x, datas.position.y])

    def callbackVehicleSpec(self, datas):
        self.vehicleSpec = datas

    def callbackObj(self, datas):
        if self.egoPose is None or self.vehicleSpec is None:
            pass
        else:
            tmpObjList = ObjectStatusList()
            tmpObjList.header=datas.header
            tmpObjList.npc_list=[]
            tmpObjList.pedestrian_list=[]
            tmpObjList.obstacle_list=[]

            rotMat = np.array([math.sin(self.egoHead), math.cos(self.egoHead)])
            rotWidth = rotMat * (VehicleWidth/2)
            egoEndPoseLeft = np.array(self.egoPose + [-rotWidth[0], rotWidth[1]])
            egoEndPoseRight = np.array(self.egoPose + [rotWidth[0], -rotWidth[1]])
            for data in datas.npc_list:
                tmpIdx = -1
                for i in range(0, len(self.vehicleSpec.specs)):
                    if(data.name == self.vehicleSpec.specs[i].vehicle_name):
                        tmpIdx = i
                        break
                objPose = None
                calcPosX = 0
                calcPosY = 0
                heading = np.deg2rad(data.heading -90)
                posX = data.position.x
                posY = data.position.y
                if(tmpIdx > -1):
                    tmpSpec = self.vehicleSpec.specs[i]
                    tmpLen = tmpSpec.length/2 - tmpSpec.rear_overhang
                    tmpRotMat = np.array([math.sin(heading), math.cos(heading)])
                    tmpRotDist = tmpLen * tmpRotMat
                    calcPosX = posX + tmpRotDist[0]
                    calcPosY = posY + tmpRotDist[1]
                    objPose = np.array([calcPosX, calcPosY])
                else:
                    objPose = np.array([posX, posY])

                leftDiff = objPose - egoEndPoseLeft
                leftAngle = -np.arctan2(leftDiff[0], leftDiff[1])
                rightDiff = objPose - egoEndPoseRight
                rightAngle = -np.arctan2(rightDiff[0], rightDiff[1])

                if self.calcAngleInRange(leftAngle, self.egoHead, 
                    np.deg2rad(12), np.deg2rad(45)) and \
                   self.calcAngleInRange(rightAngle, self.egoHead,
                    np.deg2rad(45), np.deg2rad(12)):
                    tmpObj = data
                    tmpObj.position.x = objPose[0]
                    tmpObj.position.y = objPose[1]
                    tmpObjList.npc_list.append(data)

            for data in datas.pedestrian_list:
                posX = data.position.x
                posY = data.position.y
                objPose = np.array([posX, posY])

                leftDiff = objPose - egoEndPoseLeft
                leftAngle = -np.arctan2(leftDiff[0], leftDiff[1])
                rightDiff = objPose - egoEndPoseRight
                rightAngle = -np.arctan2(rightDiff[0], rightDiff[1])

                if self.calcAngleInRange(leftAngle, self.egoHead,
                     np.deg2rad(12), np.deg2rad(45)) and \
                   self.calcAngleInRange(rightAngle, self.egoHead,
                     np.deg2rad(45), np.deg2rad(12)):
                    tmpObjList.pedestrian_list.append(data)
        
            for data in datas.obstacle_list:
                posX = data.position.x
                posY = data.position.y
                objPose = np.array([posX, posY])

                leftDiff = objPose - egoEndPoseLeft
                leftAngle = -np.arctan2(leftDiff[0], leftDiff[1])
                rightDiff = objPose - egoEndPoseRight
                rightAngle = -np.arctan2(rightDiff[0], rightDiff[1])

                if self.calcAngleInRange(leftAngle, self.egoHead,
                     np.deg2rad(12), np.deg2rad(45)) and \
                    self.calcAngleInRange(rightAngle, self.egoHead,
                     np.deg2rad(45), np.deg2rad(12)):
                    tmpObjList.obstacle_list.append(data)
            
            tmpObjList.num_of_npcs = len(tmpObjList.npc_list)
            tmpObjList.num_of_pedestrian = len(tmpObjList.pedestrian_list)
            tmpObjList.num_of_obstacle = len(tmpObjList.obstacle_list)
            self.objList = tmpObjList


if __name__ == "__main__":
    rospy.init_node('obj_filter', anonymous=False)
    npcFilter = NPCStatusFilter(0,0)
    sub_obj = rospy.Subscriber('Object_topic', ObjectStatusList,
        npcFilter.callbackObj, queue_size=1)
    sub_ego = rospy.Subscriber('Ego_topic',EgoVehicleStatus,
        npcFilter.callbackEgo, queue_size=1)
    sub_spec = rospy.Subscriber('specs',VehicleSpecDetails,
        npcFilter.callbackVehicleSpec, queue_size=1)
    pub_obj = rospy.Publisher('Object_topic_filter', ObjectStatusList,
        queue_size=1)
    rosrate = rospy.Rate(60)
    while not rospy.is_shutdown():
        objList = npcFilter.objList
        pub_obj.publish(objList)
        rosrate.sleep()
    sys.exit(0)

