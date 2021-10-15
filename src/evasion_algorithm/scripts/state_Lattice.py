#! /usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys

import rospy

from nav_msgs.msg import Path
from geometry_msgs.msg import PoseStamped, Point
from morai_msgs.msg import EgoVehicleStatus, ObjectStatusList
from morai_msgs.msg import ObjectStatus
import numpy as np

LOOK_AHEAD_GAIN = 0.5

class RoundObj:
    def __init__(self, status):
        self.size = [status.size.x, status.size.y]
        self.pose = np.array([status.position.x,
                              status.position.y])
        self.heading = np.deg2rad(status.heading)

        self.isEllips = (self.size[0] != self.size[1])
        self.semiMajor = 0
        self.semiMinor = 0
        self.radius = 0
        if self.isEllips:
            self.semiMajor = max(self.size)/np.sqrt(2) / 2
            self.semiMinor = min(self.size)/np.sqrt(2) / 2
        else:
            self.radius = np.linalg.norm(self.size, ord=2)

    def IsCollision(self, paths):
        cosTheta = 0
        sinTheta = 0
        if self.isEllips:
            cosTheta = np.cos(self.heading)
            sinTheta = np.sin(self.heading)
        lenPath = len(paths)
        isCollision = np.array([False]*lenPath, dtype=bool)
        for i in range(lenPath):
            pathLen = len(paths[i].poses)
            for j in range(pathLen):
                tmpPosition = paths[i].poses[j].pose.position
                pathPoint = np.array([tmpPosition.x,
                                      tmpPosition.y])
                diffPosition = np.reshape(pathPoint, (2)) - \
                               self.pose
                roundDist = 0

                if self.isEllips:
                    roundDist = np.power((cosTheta * diffPosition[0] +
                                        sinTheta * diffPosition[1]),2) / \
                                np.square(self.semiMajor) + \
                                np.power((sinTheta * diffPosition[0] +
                                        cosTheta * diffPosition[1]),2) / \
                                np.square(self.semiMinor)
                else:
                    roundDist = np.linalg.norm(diffPosition, ord=2) - \
                                self.radius + 1

                if roundDist <= 1:
                    isCollision[i] = True
                    break

        return isCollision


class StateLatticePlanner:
    def __init__(self):
        self.currPath = Path()
        self.currStatus = EgoVehicleStatus()
        self.currSpeed = 0
        self.ldGain = LOOK_AHEAD_GAIN

        self.transMatStart = None
        self.laneOffset = np.array([3.9,   2.6,  1.3, 0,
                                    -1.3, -2.6, -3.9])
        self.laneWeight = np.array([6,   4,   2,   0,
                                    2,   4,   6])

        self.list_obj= []

    def CalcTransMatrix(self, startPosition, nxtPosition):
        startPoint = startPosition
        startNxtPoint = nxtPosition
        global_ref_start_point = np.array([startPoint.x, startPoint.y])
        global_ref_start_next_point = np.array([startNxtPoint.x,
                                                startNxtPoint.y])

        diff_start_point = global_ref_start_next_point - \
                           global_ref_start_point

        pathTheta = np.arctan2(diff_start_point[1],
                               diff_start_point[0])
        trans = np.array([global_ref_start_point])

        rotMat = np.array([[np.cos(pathTheta), -np.sin(pathTheta)],
                           [np.sin(pathTheta),  np.cos(pathTheta)]])
        rotTrans = trans.dot(rotMat)
        zeroMat = np.array([[0, 0, 1]])

        tMat = np.concatenate((rotMat, trans.T), axis=1)
        tMat = np.concatenate((tMat, zeroMat), axis=0)

        det_tMat = np.concatenate((rotMat.T, -rotTrans.T), axis=1)
        det_tMat = np.concatenate((det_tMat, zeroMat), axis=0)

        return (tMat, det_tMat)

    def CalcSubPath(self, pathLen, lD):
        out_path = []

        startPoint = self.currPath.poses[0].pose.position
        startNxtPoint = self.currPath.poses[1].pose.position

        tMat, det_tMat = self.CalcTransMatrix(startPoint,
                                              startNxtPoint)

        endPoint = self.currPath.poses[lD-1].pose.position

        world_end_point = np.array([endPoint.x, endPoint.y, 1]).T
        local_end_point = det_tMat.dot(world_end_point)

        world_ego_vehicle_position = np.array([self.currStatus.position.x,
                                               self.currStatus.position.y,
                                               1]).T
        local_ego_vehicle_position = det_tMat.dot(
            world_ego_vehicle_position)

        local_lattice_points = []
        for i in range(len(self.laneOffset)):
            local_lattice_points.append([local_end_point[0],
                                         local_end_point[1] + \
                                             self.laneOffset[i],
                                         1])

        for end_point in local_lattice_points:
            lattice_path = Path()
            lattice_path.header.frame_id = 'map'
            x = []
            y = []
            x_interval = 0.5
            xs = 0
            xf = end_point[0]
            ps = local_ego_vehicle_position[1]

            pf = end_point[1]
            x_num = int(xf/x_interval)

            for i in range(xs, x_num):
                x.append(i * x_interval)

            a = np.array([[ps,
                           0,
                           3.0*(pf-ps)/np.power(xf,2),
                           -2.0*(pf-ps)/np.power(xf,3)]]).T

            for i in x:
                tmpArray = np.array([1,
                                     i,
                                     np.power(i,2),
                                     np.power(i,3)])
                result = tmpArray.dot(a)
                y.append(result)

            for i in range(0, len(y)):
                local_result = np.array([[x[i], y[i], 1]]).T
                global_result = tMat.dot(local_result)

                read_pose = PoseStamped()
                read_pose.pose.position.x=global_result[0]
                read_pose.pose.position.y=global_result[1]
                read_pose.pose.position.z=0
                read_pose.pose.orientation.x=0
                read_pose.pose.orientation.y=0
                read_pose.pose.orientation.z=0
                read_pose.pose.orientation.w=1
                lattice_path.poses.append(read_pose)

            out_path.append(lattice_path)

        add_point_size = int(self.currSpeed*2*3.6) + 10 + lD
        if add_point_size > (pathLen-lD):
            add_point_size = pathLen-lD
        elif add_point_size < lD + 10 :
            add_point_size = lD + 10
        #added
        for i in range(lD,add_point_size):
            if i+1 < pathLen:
                tmpStartPoint = \
                    self.currPath.poses[i].pose.position
                tmpStartNxtPoint = \
                    self.currPath.poses[i+1].pose.position
                if (tmpStartPoint.x == tmpStartNxtPoint.x) and (tmpStartPoint.y == tmpStartNxtPoint.y):
                    continue
                tmpTMat, __ = self.CalcTransMatrix(
                    tmpStartPoint, tmpStartNxtPoint)

                for lane_num in range(len(self.laneOffset)) :
                    local_result=np.array([[0,
                                           self.laneOffset[lane_num],
                                           1]]).T
                    global_result=tmpTMat.dot(local_result)

                    read_pose=PoseStamped()
                    read_pose.pose.position.x=global_result[0]
                    read_pose.pose.position.y=global_result[1]
                    read_pose.pose.position.z=0
                    read_pose.pose.orientation.x=0
                    read_pose.pose.orientation.y=0
                    read_pose.pose.orientation.z=0
                    read_pose.pose.orientation.w=1
                    out_path[lane_num].poses.append(read_pose)

        return out_path

    def CollisionCheck(self, paths):
        isCollision = np.array(
            [False] * len(self.laneOffset), dtype=bool)

        for obj in self.list_obj:
            tmpCollisionData = obj.IsCollision(paths)
            isCollision = np.logical_or(
                isCollision, tmpCollisionData)

        collisionWeight = self.laneWeight + \
            (isCollision * 100)
        return collisionWeight

    def Process(self):
        pathLen = len(self.currPath.poses)
        #added
        lookaheadDistance = int(
            self.currSpeed * 3.6 * self.ldGain)
        if (lookaheadDistance < 10):
            lookaheadDistance = 10
        if pathLen < lookaheadDistance:
            return ([self.currPath], None)
        else:
            paths = self.CalcSubPath(
                pathLen, lookaheadDistance)
            collisionWeights = self.CollisionCheck(
                paths)
            minIdx = np.argmin(collisionWeights)

            return (paths, paths[minIdx])

    def callbackEgoStatus(self, datas):
        self.currStatus = datas
        tmpVel = np.array([datas.velocity.x,
                           datas.velocity.y,
                           datas.velocity.z])
        tmpSpeed = np.linalg.norm(tmpVel, ord=2)
        self.currSpeed = tmpSpeed

    def callbackLocalPath(self, datas):
        self.currPath = datas

    def callbackObjects(self, datas):
        self.list_obj = []

        for data in datas.npc_list:
            self.list_obj.append(
                RoundObj(data))
        for data in datas.pedestrian_list:
            self.list_obj.append(
                RoundObj(data))
        for data in datas.obstacle_list:
            self.list_obj.append(
                RoundObj(data))



if __name__ == "__main__":
    rospy.init_node('state_lattice_planner',
                    anonymous=False)
    SLP = StateLatticePlanner()
    rospy.Subscriber('Ego_topic',
                     EgoVehicleStatus,
                     SLP.callbackEgoStatus)
    rospy.Subscriber('local_path', Path,
                     SLP.callbackLocalPath)
    rospy.Subscriber('Object_topic',
                     ObjectStatusList,
                     SLP.callbackObjects)

    pub_drivePath = \
        rospy.Publisher('local_path_ca', Path,
                        queue_size=1)
    pub_totalPath = []
    for i in range(1,8):
        pub_totalPath.append(
            rospy.Publisher('lattice_path_{}'.format(i),
                            Path, queue_size=1))

    rosrate = rospy.Rate(30)
    while not rospy.is_shutdown():
        totalPath, caPath = SLP.Process()
        if caPath is not None:

            pub_drivePath.publish(caPath)
            pubPathNum = min(len(totalPath), 7)
            for i in range(pubPathNum):
                pub_totalPath[i].publish(totalPath[i])
        rosrate.sleep()
    sys.exit(0)