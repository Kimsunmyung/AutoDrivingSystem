#!/usr/bin/env python
 
import rospy
import numpy as np
from tf.transformations import quaternion_from_euler
from tf import TransformBroadcaster
# from pyproj import Proj

from morai_msgs.msg import Imu
from sensor_msgs.msg import NavSatFix
from nav_msgs.msg import Odometry



class Converter:
    def __init__(self, zone=52):
        
        self.gps_sub = rospy.Subscriber("/gps_node/get_UTM", NavSatFix, self.navsat_callback)
        self.imu_sub = rospy.Subscriber("/Imu_data", Imu, self.imu_callback)
        
        self.odom_pub = rospy.Publisher('/odom',Odometry, queue_size=1)
        rospy.sleep(1)
        self.x, self.y, self.heading = None, None, None

        # self.proj_UTM = Proj(proj='utm',zone=52, ellps='WGS84', preserve_units=False)

        self.odom_msg=Odometry()
        self.odom_msg.header.frame_id='/odom'
        self.odom_msg.child_frame_id='/base_link'

        self.heading = 0

    def imu_callback(self, imu_msg):
        
        self.yaw = imu_msg.yaw
        
        self.odom_msg.pose.pose.orientation.x = 0.0
        self.odom_msg.pose.pose.orientation.y = 0.0
        self.odom_msg.pose.pose.orientation.z = self.yaw
        self.odom_msg.pose.pose.orientation.w = 0.0
        
        self.heading = self.yaw / 60.0

        print(self.heading)

    def navsat_callback(self, gps_msg):
        
        self.lat = gps_msg.latitude
        self.lon = gps_msg.longitude
        
        # self.u = utm.from_latlon(gps_msg.latitude, gps_msg.longitude)

        self.x = self.lat
        self.y = self.lon

#        self.e_o = gps_msg.eastOffset
#        self.n_o = gps_msg.northOffset

        # self.convertLL2UTM()

        if self.heading is not None:

            br = TransformBroadcaster()

            br.sendTransform((self.x, self.y, 0.),
                            quaternion_from_euler(0, 0, self.heading),
                            rospy.Time.now(),
                            "base_link",
                            "map")

            self.odom_msg.header.stamp = rospy.get_rostime()

            self.odom_msg.pose.pose.position.x = self.x
            self.odom_msg.pose.pose.position.y = self.y
            self.odom_msg.pose.pose.position.z = 0.5

            self.odom_pub.publish(self.odom_msg)

    # def convertLL2UTM(self):
    
    #     xy_zone = self.proj_UTM(self.lon, self.lat)

    #     self.x = xy_zone[0]#-self.e_o
    #     self.y = xy_zone[1]#-self.n_o



if __name__ == '__main__':
     
    rospy.init_node('gps_imu_parser', anonymous=True)

    gps_parser = Converter()

    rospy.spin()
    
