#!usr/bin/env python
# _*_ coding: utf-8 _*_

import os
import rospy
import rospkg
import numpy as np
from math import cos, sin, pi, sqrt, pow
from geometry_msgs.msg import Point32, PoseStamped
from sensor_msgs.msg import PointCloud
from nav_msgs.msg import Odometry,Path
from std_msgs.msg import Float64

class velocityPlanning :
    def __init__(self,car_max_speed,road_friction):
        self.car_max_speed=car_max_speed
        self.road_friction=road_friction

    def curveBasedVelocity(self,global_path,point_num):
        out_vel_plan=[]
        for i in range(0,point_num):
            out_vel_plan.append(self.car_max_speed)

        for i in range(point_num,len(global_path.poses)-point_num):
            x_list=[]
            y_list=[]
            for box in  range(-point_num,point_num):
                x=global_path.poses[i+box].pose.position.x
                y=global_path.poses[i+box].pose.position.y
                x_list.append([-2*x,-2*y,1])
                y_list.append(-(x*x)-(y*y))
            
            x_matrix=np.array(x_list)
            y_matrix=np.array(y_list)
            x_trans=x_matrix.T
            
            a_matrix=np.linalg.inv(x_trans.dot(x_matrix)).dot(x_trans).dot(y_matrix)
            a=a_matrix[0]
            b=a_matrix[1]
            c=a_matrix[2]
            r=sqrt(a*a+b*b-c)
            v_max=sqrt(r*9.8*self.road_friction)
            if v_max>self.car_max_speed :
                v_max=self.car_max_speed
            out_vel_plan.append(v_max)


        for i in range(len(global_path.poses)-point_num,len(global_path.poses)-10):
            out_vel_plan.append(30)

        for i in range(len(global_path.poses)-10,len(global_path.poses)):
            out_vel_plan.append(0)
        return out_vel_plan

class path_pub:
    
    def __init__(self):
        rospy.init_node('path_pub', anonymous=True)
        rospy.Subscriber("odom",Odometry, self.odom_callback)

        self.global_path_pub = rospy.Publisher('/global_path', Path, queue_size=1)
        self.local_path_pub = rospy.Publisher('/local_path', Path, queue_size=1)
        self.velocity_path_pub = rospy.Publisher('/velocity_path', Path, queue_size=1)
        self.global_path_msg = Path()
        self.global_path_msg.header.frame_id = '/map'
        
        self.is_odom = False
        self.local_path_size = 50
        
        rospack = rospkg.RosPack()
        pkg_path = rospack.get_path('topic_tutorial')
        full_path = pkg_path + '/path' + '/test.txt'
        self.f = open(full_path, 'r')
        lines = self.f.readlines()
        for line in lines:
            tmp = line.split()
            read_pose = PoseStamped()
            read_pose.pose.position.x = float(tmp[0])
            read_pose.pose.position.y = float(tmp[1])
            read_pose.pose.orientation.w = 1
            self.global_path_msg.poses.append(read_pose)
            
        self.f.close()
        
        velocity_path_msg = Float64()
        velocity_path_data = velocityPlanning(20,0.8)
        velocity_path_importmation = velocity_path_data.curveBasedVelocity(self.global_path_msg,10)
        
        rate = rospy.Rate(20)
        while not rospy.is_shutdown():
            
            if self.is_odom == True:
                local_path_msg = Path()
                local_path_msg.header.frame_id = '/map'
                
                x = self.x
                y = self.y
                min_dis = float('inf')
                current_waypoint = -1
                for i, waypoint in enumerate(self.global_path_msg.poses):
                    
                    distance = sqrt(pow(x - waypoint.pose.position.x, 2) + pow(y - waypoint.pose.position.y, 2))
                    if distance < min_dis:
                        min_dis = distance
                        current_waypoint = i
                        
                if current_waypoint != -1:
                    if current_waypoint + self.local_path_size < len(self.global_path_msg.poses):
                        for num in range(current_waypoint, current_waypoint + self.local_path_size):
                            tmp_pose = PoseStamped()
                            tmp_pose.pose.position.x = self.global_path_msg.poses[num].pose.position.x              
                            tmp_pose.pose.position.y = self.global_path_msg.poses[num].pose.position.y
                            tmp_pose.pose.orientation.w = 1
                            local_path_msg.poses.append(tmp_pose)
                            
                    else:
                        for num in range(current_waypoint, len(self.global_path_msg.poses)):
                            tmp_pose = PoseStamped()
                            tmp_pose.pose.position.x = self.global_path_msg.poses[num].pose.position.x
                            tmp_pose.pose.position.y = self.global_path_msg.poses[num].pose.position.y
                            tmp_pose.pose.orientation.w = 1
                            local_path_msg.poses.append(tmp_pose)
                            
                velocity_path_msg.data = velocity_path_importmation[current_waypoint]
                
                print(x,y)
                self.global_path_pub.publish(self.global_path_msg)
                self.local_path_pub.publish(local_path_msg)
                self.velocity_path_pub.publish(velocity_path_msg)
            
            rate.sleep()
            
              
    def odom_callback(self, msg):
        self.is_odom = True
        self.x = msg.pose.pose.position.x
        self.y = msg.pose.pose.position.y
        
if __name__ == '__main__':
    try:
        test_track = path_pub()
    except rospy.ROSInterruptException:
        pass