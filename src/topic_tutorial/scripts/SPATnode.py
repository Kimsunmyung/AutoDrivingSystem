#! /usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import os

import numpy as np

import rospy

from nav_msgs.msg import Odometry
from geometry_msgs.msg import PoseStamped, Point32
from sensor_msgs.msg import PointCloud
from morai_msgs.msg import GetTrafficLightStatus, PlannedLink
from std_msgs.msg import Float32

current_path = os.path.dirname(os.path.realpath(__file__))
sys.path.append(current_path)

from lib.mgeo.class_defs import *

SEARCH_LINK_DIST = 3

class SPATProcess:
    def __init__(self):

        load_path = os.path.normpath(os.path.join(current_path, 'lib/mgeo_data/kcity'))
        mgeo_planner_map = MGeoPlannerMap.create_instance_from_json(load_path)

        self.node_set = mgeo_planner_map.node_set.nodes
        self.link_set = mgeo_planner_map.link_set.lines

        self.is_odom = False
        self.pose = [0, 0]
        self.tlStatus = -1
        self.plannedPath = []

        self.currLink = None
        self.currLinkPt = -1
        self.currLinkIdxNum = -1
        self.searchingEgo = False

        self.shouldStop = False

    def calcLinkDist(self, link, currPt, nearLink, linkDist, nearLinkPt):
        dist = np.linalg.norm(link.points[:,0:2] - currPt, ord=2, axis=1)
        minLinkPt = np.argmin(dist)
        minDist = dist[minLinkPt]
        if (minDist < SEARCH_LINK_DIST) and (minDist < linkDist):
            return (True, link.idx, minDist, minLinkPt)
        else:
            return (False, nearLink, linkDist, nearLinkPt)


    def findCurrLink(self,pose):
        if (len(self.plannedPath) > 0) and \
           (self.link_set is not None):
            currPt = np.array(pose)
            nearLink = None
            linkDist = float('inf')
            nearLinkPt = -1
            nearLinkIdx = -1
            isChange = False
            for i,link_id in enumerate(self.plannedPath):
                link_item = self.link_set[link_id]
                (isChange, nearLink, linkDist, nearLinkPt) = \
                    self.calcLinkDist(link_item, currPt, nearLink,
                                      linkDist, nearLinkPt)
                if isChange:
                    nearLinkIdx = i

            """ full search
            nearNode = None
            nodeDist = float('inf')
            for node_id in self.node_set.nodes:
                nodePt = np.array(self.node_set.nodes[node_id].point[0:2])
                dist = np.linalg.norm(nodePt - currPt, ord=2)
                if dist < nodeDist:
                    nearNode = node_id
                    nodeDist = dist
            for link_item in self.node_set.nodes[nearNode].get_to_links():
                (nearLink, linkDist, nearLinkPt) = \
                    self.calcLinkDist(link_item, currPt, nearLink, linkDist,nearLinkPt)
                if link_item.lane_ch_link_left is not None:
                    (nearLink, linkDist, nearLinkPt) = \
                        self.calcLinkDist(link_item.lane_ch_link_left,
                                          currPt, nearLink, linkDist,nearLinkPt)
                if link_item.lane_ch_link_right is not None:
                    (nearLink, linkDist, nearLinkPt) = \
                        self.calcLinkDist(link_item.lane_ch_link_right,
                                          currPt, nearLink, linkDist,nearLinkPt)

            for link_item in self.node_set.nodes[nearNode].get_from_links():
                (nearLink, linkDist, nearLinkPt) = \
                    self.calcLinkDist(link_item, currPt, nearLink, linkDist,nearLinkPt)
                if link_item.lane_ch_link_left is not None:
                    (nearLink, linkDist, nearLinkPt) = \
                        self.calcLinkDist(link_item.lane_ch_link_left,
                                          currPt, nearLink, linkDist,nearLinkPt)
                if link_item.lane_ch_link_right is not None:
                    (nearLink, linkDist, nearLinkPt) = \
                        self.calcLinkDist(link_item.lane_ch_link_right,
                                          currPt, nearLink, linkDist,nearLinkPt)
            """
            return (nearLinkIdx, nearLink, linkDist, nearLinkPt)
        elif self.link_set is None:
            rospy.logerr_throttle(1, 'MGeo Load Failed')
        return (-1, None, None, None)

    def findCurrLinkEgo(self):
        if not self.searchingEgo:
            self.searchingEgo = True
            (idx, nL, lD, nP) = self.findCurrLink(self.pose)
            if (idx > -1) and (not nL is None):
                self.currLinkIdxNum = idx
                self.currLink = nL
                self.currLinkPt = nP
                rospy.loginfo_throttle(1, 'current link: {0} / {1}'.format(nL, self.currLinkPt))
            else:
                self.currLink = None
                rospy.logwarn_throttle(1, 'cannot find a nearest link')
            self.searchingEgo = False

    def Process(self):
        if (not self.is_odom) or (self.tlStatus == -1):
            return -1

        self.findCurrLinkEgo()
        if (self.currLink is not None) and (self.currLinkIdxNum > -1):
            currMLink = self.link_set[self.plannedPath[self.currLinkIdxNum]]
            toEndDist = (currMLink.points.shape[0] - self.currLinkPt) * 0.5
            for i in range(self.currLinkIdxNum+1, len(self.plannedPath)):
                tmpMLink = self.link_set[self.plannedPath[i]]
                if (tmpMLink.related_signal is not None):
                    if (tmpMLink.related_signal == 'straight' and self.tlStatus&16 > 0):
                        return -1
                    elif (tmpMLink.related_signal == 'right'):
                        return -1
                    elif (tmpMLink.related_signal == 'left' and self.tlStatus&32 > 0):
                        return -1
                    else:
                        return toEndDist
                toEndDist += tmpMLink.points.shape[0] * 0.5

        return -1

    def callbackOdom(self, msg):
        self.is_odom=True
        self.pose = [msg.pose.pose.position.x, msg.pose.pose.position.y]

    def callbackTL(self, msg):
        self.tlStatus = msg.trafficLightStatus

    def callbackPL(self, msg):
        self.plannedPath = msg.link_array



if __name__ == '__main__':
    rospy.init_node('spat_node', anonymous=False)
    SPATProc = SPATProcess()
    rospy.Subscriber('/odom', Odometry, SPATProc.callbackOdom)
    rospy.Subscriber('/GetTrafficLightStatus', GetTrafficLightStatus, SPATProc.callbackTL)
    rospy.Subscriber('planned_link', PlannedLink, SPATProc.callbackPL)

    stopDist_pub = rospy.Publisher('TLStopDist', Float32, queue_size=1)
    rosrate = rospy.Rate(30)
    while not rospy.is_shutdown():
        stopDist = SPATProc.Process()
        tmpData = Float32()
        tmpData.data = stopDist
        stopDist_pub.publish(tmpData)
        rosrate.sleep()

    sys.exit(0)
