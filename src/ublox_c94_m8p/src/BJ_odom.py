#!/usr/bin/env python

import rospy
import numpy as np
import tf
import math
# from pyproj import Proj

# import utm

from gps_imu_msgs.msg import Imu, gps_utm
from sensor_msgs.msg import NavSatFix
from nav_msgs.msg import Odometry
from gps_c94_m8p.msg import gps_data


class Converter:
    def __init__(self, zone=52):
        
        self.gps_sub = rospy.Subscriber("/gps/utm", gps_utm, self.navsat_callback)
        
        self.odom_pub = rospy.Publisher('/odom',Odometry, queue_size=1)

        self.pi_pub = rospy.Publisher('/gps/pi',Imu, queue_size=1)

        self.x, self.y, self.heading = None, None, None

        # self.proj_UTM = Proj(proj='utm',zone=52, ellps='WGS84', preserve_units=False)

        self.odom_msg=Odometry()
        self.odom_msg.header.frame_id='/odom'
        self.odom_msg.child_frame_id='/base_link'
        
        self.pi_msg = Imu()
        # self.proj_UTM = Proj(proj = 'utm', zone = 52)

        self.heading = 0

        self.oldx = 0
        self.oldy = 0
        
        self.delay = 0
        

    # def imu_callback(self, imu_msg):
        
    #     self.yaw = imu_msg.yaw
    #     self.odom_msg.pose.pose.orientation.x = 0.0
    #     self.odom_msg.pose.pose.orientation.y = 0.0
    #     self.odom_msg.pose.pose.orientation.z = self.yaw
    #     self.odom_msg.pose.pose.orientation.w = 0.0
        
    #     self.heading = self.yaw / 60.0
        

    def navsat_callback(self, gps_msg):
        
        self.x = gps_msg.easting
        self.y = gps_msg.northing
        self.heading = 1.0
        if self.heading is not None:
            
            self.delay += 1

            if self.delay >= 7:
                
                ansx = self.x - self.oldx
                ansy = self.y - self.oldy
                
                if abs(ansx) + abs(ansy) >=0.1:
                    self.heading_rad = math.atan2(ansx, ansy)
                    self.heading_rad = self.heading_rad - (math.pi * 0.5)

                    if self.heading_rad <= -math.pi : self.heading_rad + math.pi * 2
                    self.heading_rad *= -1.0
                    degrees = self.heading_rad * 180 / math.pi
                    
                    if degrees > 90: degrees = 450 - degrees
                    else: degrees = 90 - degrees
                    self.pi_msg.yaw = degrees
                    self.pi_msg.roll = 0.0
                    self.pi_msg.pitch = 0.0
                    # print(self.heading_rad, degrees)

                    heading1 = math.degrees(math.atan2(ansx, ansy))

                    self.heading = heading1 / 180.0
                    # self.heading = ((((heading1-0.5)*-1)/180)*math.pi)+(math.pi/2)

                    print(heading1, self.heading)
                    self.odom_msg.pose.pose.orientation.x = 0.0
                    self.odom_msg.pose.pose.orientation.y = 0.0
                    self.odom_msg.pose.pose.orientation.z = self.heading_rad

                    self.odom_msg.pose.pose.orientation.w = 0.0

                    self.delay = 0

            if self.delay == 0:
                self.oldx = self.x
                self.oldy = self.y
            ################################################



            br = tf.TransformBroadcaster()

            br.sendTransform((self.x, self.y, 0.),
                            tf.transformations.quaternion_from_euler(0, 0,self.heading_rad),
                            rospy.Time.now(),
                            "base_link",
                            "map")
            self.odom_msg.header.stamp = rospy.get_rostime()
            
            ################################################


            ################################################

            self.odom_msg.pose.pose.position.x = self.x
            self.odom_msg.pose.pose.position.y = self.y
            self.odom_msg.pose.pose.position.z = 0.0
            
            self.odom_pub.publish(self.odom_msg)
            self.pi_pub.publish(self.pi_msg)


    # def convertLL2UTM(self):
    
    #     xy_zone = self.proj_UTM(self.lon, self.lat)

    #     self.x = xy_zone[0]#-self.e_o
    #     self.y = xy_zone[1]#-self.n_o



if __name__ == '__main__':
     
    rospy.init_node('odom_node', anonymous=True)

    gps_parser = Converter()

    rospy.spin()
    
