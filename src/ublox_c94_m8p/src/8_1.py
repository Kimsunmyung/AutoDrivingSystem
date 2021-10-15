#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import rospkg
from math import cos,sin,pi,sqrt,pow,atan2
from geometry_msgs.msg import Point,PoseWithCovarianceStamped
from nav_msgs.msg import Odometry,Path
from morai_msgs.msg import CtrlCmd,EgoVehicleStatus
from std_msgs.msg import Float64
import numpy as np
import tf
from tf.transformations import euler_from_quaternion,quaternion_from_euler
from cardriver.msg import control_rx, control_tx
from gps_c94_m8p.msg import gps_data
from gps_imu_msgs.msg import Imu
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
        # self.gps_sub = rospy.Subscriber("/gps_fix", gps_data, self.navsat_callback)
        self.pi_sub = rospy.Subscriber("/gps/pi",Imu,self.pi_callback)
        
        self.ctrl_cmd_pub = rospy.Publisher('ctrl_cmd',CtrlCmd, queue_size=1)
        self.ctrl_cmd_msg=CtrlCmd()
        self.ctrl_cmd_msg.longlCmdType=2

        self.pub_ctrl_msg = control_tx()###########################################################
        self.pub_ctrl = rospy.Publisher("/command/", control_tx, queue_size=1)###########################################################
        self.sub_values = rospy.Subscriber("/value/", control_rx, self.sub_callback_car_status)###########################################################

        self.Cset_aimode = 2 # 0:OFF, 1:JustSteer, 2:CarPairToPCReady, 3:ForceControl(Warnning)
        self.Cset_drvmode = 1 # 0:Normal, 1:Forward, 2:Reverse, 3:break
        self.Cset_throttle = 0 # 0~99 throttle level
        self.Cset_steer_degree = 90 # 0~180 steer degree mode set (180 upper is off)
        
        
        self.pub_ctrl_msg.steer_raw = 9999###########################################################
        self.pub_ctrl_msg.signal = 3###########################################################
        self.pub_ctrl_msg.lamp = 1###########################################################
        self.pub_ctrl_msg.horn = 0###########################################################
        self.pub_ctrl_msg.embed_custom_a = 0###########################################################
        self.pub_ctrl_msg.embed_custom_b = 0###########################################################
        

        self.is_path=False
        self.is_odom=False
        self.is_current_vel=True
        self.target_vel=0.0
        self.current_vel =0.0

        self.forward_point=Point()
        self.current_postion=Point()
        self.is_look_forward_point=False
        self.vehicle_length=1.2
        self.lfd=7.0

        self.ld_gain = 1.5
        self.min_lfd = 3.0
        self.max_lfd = 20.0
        

        self.pid_controller=pidControl()

        rate = rospy.Rate(30) # 30hz
        while not rospy.is_shutdown():

            if self.is_path ==True and self.is_odom==True:
                
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

                #self.lfd=self.current_vel* self.ld_gain  
                self.lfd=2.5  
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
                # print(self.path.poses)
                if self.is_look_forward_point :
                    self.ctrl_cmd_msg.steering=atan2((2*self.vehicle_length*sin(theta)),self.lfd)
                    self.ctrl_cmd_msg.velocity = 40.0
                   
                else : 
                    print("no found forward point")
                    self.ctrl_cmd_msg.steering=0.0
                    self.ctrl_cmd_msg.velocity=0.0
                self.ctrl_cmd_pub.publish(self.ctrl_cmd_msg)


                ####################################################
                self.pub_ctrl_msg.aimode = self.Cset_aimode
                self.pub_ctrl_msg.drive_vector = self.Cset_drvmode
                if self.is_look_forward_point: self.pub_ctrl_msg.drive_throttle = 25
                else: self.pub_ctrl_msg.drive_throttle = 0
                print(self.is_look_forward_point)
                # print(self.ctrl_cmd_msg.steering*180/3.141592)
                # print(self.ctrl_cmd_msg.steering)
                
                self.pub_ctrl_msg.steer_degree=int(((self.ctrl_cmd_msg.steering)*180/3.141592)*1.5+90)
                
                if self.pub_ctrl_msg.steer_degree < 0: self.pub_ctrl_msg.steer_degree = 0
                elif self.pub_ctrl_msg.steer_degree > 180: self.pub_ctrl_msg.steer_degree = 180
                
                print(" SteerMsg:", self.pub_ctrl_msg.steer_degree)
                self.pub_ctrl.publish(self.pub_ctrl_msg)
               
                ####################################################
                
            rate.sleep()

    #############################################
    def sub_callback_rotor_hall_l(self, msg): #25ms loop
        read_hall = int(msg.data)
        self.addmem_hall_l = read_hall
    
    def sub_callback_rotor_hall_r(self, msg):
        read_hall = int(msg.data)
        self.addmem_hall_r = read_hall

    def pi_callback(self, msg):
        self.heading_pi = msg.yaw
    #############################################

    def path_callback(self,msg):
        self.is_path=True
        self.path=msg  

    def odom_callback(self,msg):
        self.is_odom=True
        # odom_quaternion=(msg.pose.pose.orientation.x,msg.pose.pose.orientation.y,msg.pose.pose.orientation.z,msg.pose.pose.orientation.w)
        # _,_,self.vehicle_yaw=euler_from_quaternion(odom_quaternion)
        self.vehicle_yaw = msg.pose.pose.orientation.z
        #self.vehicle_yaw = msg.pose.pose.orientation.z * (180/math.pi)    #-3.14~3.14 => -180 ~ 180 (rad * (180/pi))
        self.current_postion.x=msg.pose.pose.position.x
        self.current_postion.y=msg.pose.pose.position.y

    # def status_callback(self,msg):  
    #     self.is_current_vel=True
    #     self.current_vel=msg.velocity.x


    def target_vel_callback(self,msg):
        self.target_vel = 20
        # self.target_vel=msg.data #m/s

    def sub_callback_car_status(self, msg):
        # self.Cget_connection = msg.car_connected
        # self.Cget_steer_degree = msg.steer_degree 
        self.is_current_vel=True
        # self.current_vel = msg.steer_raw 
        # self.Cget_steer_limit_l = msg.steer_limit_left 
        # self.Cget_steer_limit_c = msg.steer_limit_center
        # self.Cget_steer_limit_r = msg.steer_limit_right 
        self.current_vel = msg.rotor_hall*1000 
        # self.Cget_rotor_hall_l = msg.rotor_hall_l
        # self.Cget_rotor_hall_r = msg.rotor_hall_r
        # self.Cget_voltage = msg.voltage
        # self.Cget_current_char = msg.current_charging
        # self.Cget_current_dischar = msg.current_discharging
        # self.Cget_drv_temperature = msg.drv_temperature
        # self.Cget_drvmode = msg.car_vector
        # self.Cget_lamp = msg.car_lamp
        # self.Cget_signal = msg.car_signal
        # self.Cget_brk = msg.car_solidbrk
        # self.Cget_report_a = msg.embed_custom_a
        # self.Cget_report_b = msg.embed_custom_b
        pass


if __name__ == '__main__':
    try:
        test_track=pure_pursuit()
    except rospy.ROSInterruptException:
        pass

