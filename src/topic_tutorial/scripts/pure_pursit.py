#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import rospkg
from math import cos,sin,pi,sqrt,pow,atan2
from geometry_msgs.msg import Point,PoseWithCovarianceStamped
from nav_msgs.msg import Odometry,Path
from morai_msgs.msg import CtrlCmd,EgoVehicleStatus, FTGdata
from cardriver.msg import control_rx
from std_msgs.msg import Float64
from BJ_msgs.msg import gilbot_pub
import numpy as np
import tf
from tf.transformations import euler_from_quaternion,quaternion_from_euler


class pidControl :
    def __init__(self):
        self.p_gain=1.0  
        self.i_gain=0.0
        self.d_gain=0.4  
        self.prev_error=0
        self.i_control=0
        self.controlTime=0.0333

    def pid(self,target_vel,current_vel):
        error= target_vel-current_vel
        
        p_control=self.p_gain*error
        self.i_control+=self.i_gain*error*self.controlTime
        d_control=self.d_gain*(error-self.prev_error)/self.controlTime

        output=p_control+self.i_control+d_control
        self.prev_error=error
        return output


class pure_pursuit :
    def __init__(self):
        rospy.init_node('pure_pursuit', anonymous=True)
        rospy.Subscriber("local_path", Path, self.path_callback)
        rospy.Subscriber("odom", Odometry, self.odom_callback)
        rospy.Subscriber("/target_vel", Float64, self.target_vel_callback)
        # rospy.Subscriber("/Ego_topic", EgoVehicleStatus, self.status_callback)
        rospy.Subscriber("/value", control_rx, self.status_callback)

        rospy.Subscriber('ctrl_collision', FTGdata, self.ca_callback)
        
        # self.ctrl_cmd_pub = rospy.Publisher('ctrl_cmd',CtrlCmd, queue_size=1)
        self.gilbot_cmd_pub = rospy.Publisher('gilbot_cmd',gilbot_pub, queue_size=1)
        self.gilbot_cmd_msg = gilbot_pub()

        self.ctrl_cmd_msg=CtrlCmd()
        self.ctrl_cmd_msg.longlCmdType=1

        self.is_path=False
        self.is_odom=False
        self.is_current_vel=False
        self.target_vel=0.0

        self.forward_point=Point()
        self.current_postion=Point()
        self.is_look_forward_point=False
        self.vehicle_length=2.5
        self.lfd=3
        
        self.ca_datas = FTGdata()

        self.ld_gain = 1.5
        self.min_lfd = 3.0
        self.max_lfd = 20.0

        self.pid_controller=pidControl()

        rate = rospy.Rate(30) # 30hz
        while not rospy.is_shutdown():

            if self.is_path ==True and self.is_odom==True  and self.is_current_vel==True:
                
                vehicle_position=self.current_postion
                self.is_look_forward_point= False

                translation=[vehicle_position.x, vehicle_position.y]

                t=np.array([
                        [cos(self.vehicle_yaw), -sin(self.vehicle_yaw),translation[0]],
                        [sin(self.vehicle_yaw),cos(self.vehicle_yaw),translation[1]],
                        [0                    ,0                    ,1            ]])

                det_t=np.array([
                       [t[0][0],t[1][0],-(t[0][0]*translation[0]+t[1][0]*translation[1])],
                       [t[0][1],t[1][1],-(t[0][1]*translation[0]+t[1][1]*translation[1])],
                       [0      ,0      ,1                                               ]])

                self.lfd=self.current_vel* self.ld_gain  
                if self.lfd > self.max_lfd :
                    self.lfd=self.max_lfd
                if self.lfd < self.min_lfd :
                    self.lfd=self.min_lfd

                for num,i in enumerate(self.path.poses) :
                    path_point=i.pose.position

                    global_path_point=[path_point.x,path_point.y,1]
                    local_path_point=det_t.dot(global_path_point)
 
                    
                    if local_path_point[0]>0 :
                        dis=sqrt(pow(local_path_point[0],2)+pow(local_path_point[1],2))
                        if dis>= self.lfd :
                            self.forward_point=path_point
                            self.is_look_forward_point=True
                            
                            break
                                
                    
                
                theta=atan2(local_path_point[1],local_path_point[0])
                if self.is_look_forward_point :
                    # self.ctrl_cmd_msg.steering=atan2((2*self.vehicle_length*sin(theta)),self.lfd)

                    # output=self.pid_controller.pid(self.target_vel,self.current_vel)
                    # if output > 0.0 :
                    #     self.ctrl_cmd_msg.accel=output
                    #     self.ctrl_cmd_msg.brake=0.0
                    # else :
                    #     self.ctrl_cmd_msg.accel=0.0
                    #     self.ctrl_cmd_msg.brake=-output
                    # print(self.ctrl_cmd_msg.steering,self.lfd)
                    tmpSteering = atan2((2*self.vehicle_length*sin(theta)),self.lfd)
                    if self.ca_datas.do_ca:
                        tmpData = self.ca_datas
                        tmpNum = (tmpData.ca_const_alpha / tmpData.ca_distance * tmpData.phi_gap) + (tmpData.ca_const_beta * tmpSteering)
                        tmpDen = (tmpData.ca_const_alpha / tmpData.ca_distance) + tmpData.ca_const_beta
                        self.ctrl_cmd_msg.steering = tmpNum / tmpDen
                    else:
                        self.ctrl_cmd_msg.steering = tmpSteering
                        self.gilbot_cmd_msg.steer = tmpSteering

                    #self.ctrl_cmd_msg.steering = atan2((2 * self.vehicle_length * sin(theta)), self.lfd)
                    self.ctrl_cmd_msg.velocity = 20.0
                    print(self.ctrl_cmd_msg.steering)
                else : 
                    print("no found forward point")
                    self.ctrl_cmd_msg.steering=0.0
                    self.ctrl_cmd_msg.accel=0.0
                    self.ctrl_cmd_msg.brake=1.0
                
                self.ctrl_cmd_pub.publish(self.ctrl_cmd_msg)
            rate.sleep()


    def path_callback(self,msg):
        self.is_path=True
        self.path=msg  

    def odom_callback(self,msg):
        self.is_odom=True
        odom_quaternion=(msg.pose.pose.orientation.x,msg.pose.pose.orientation.y,msg.pose.pose.orientation.z,msg.pose.pose.orientation.w)
        _,_,self.vehicle_yaw=euler_from_quaternion(odom_quaternion)
        self.current_postion.x=msg.pose.pose.position.x
        self.current_postion.y=msg.pose.pose.position.y

    def status_callback(self,msg):  
        self.is_current_vel=True
        # self.current_vel=msg.velocity.x
        self.current_vel = 1.5


    def target_vel_callback(self,msg):
        # self.target_vel=msg.data #m/s
        self.target_vel=20
    def ca_callback(self, msg):
        self.ca_datas = msg


if __name__ == '__main__':
    try:
        test_track=pure_pursuit()
    except rospy.ROSInterruptException:
        pass