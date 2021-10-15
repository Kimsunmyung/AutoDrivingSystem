#!/usr/bin/env python3

import rospy
import numpy as np
# import tf
from pyproj import Proj

# import utm

from morai_msgs.msg import Imu, gps_utm
from sensor_msgs.msg import NavSatFix
from nav_msgs.msg import Odometry



class Converter:
    def __init__(self, zone=52):
        rospy.sleep(5)
        self.gps_sub = rospy.Subscriber("/ublox_gps/fix", NavSatFix, self.navsat_callback)
        # self.gps_sub = rospy.Subscriber("/gps_node/get_UTM", NavSatFix, self.navsat_callback)
        self.utm_pub = rospy.Publisher("/gps/utm", gps_utm, queue_size=1)

        rospy.sleep(1)
        self.x, self.y, self.heading = None, None, None

        self.proj_UTM = Proj(proj='utm',zone=52, ellps='WGS84', preserve_units=False)

        self.utm_msg = gps_utm()
        
        self.proj_UTM = Proj(proj = 'utm', zone = 52)

      

    def navsat_callback(self, gps_msg):
        
        self.lat = gps_msg.latitude
        self.lon = gps_msg.longitude
        
        


#        self.e_o = gps_msg.eastOffset
#        self.n_o = gps_msg.northOffset

        self.convertLL2UTM()

        if not rospy.is_shutdown():
            self.utm_msg.easting = self.x
            self.utm_msg.northing = self.y
            
            # self.utm_msg.covariance[0] = gps_msg.position_covariance[0]
            # self.utm_msg.covariance[1] = gps_msg.position_covariance[4]
            # self.utm_msg.covariance[2] = gps_msg.position_covariance[8]
            
            self.utm_pub.publish(self.utm_msg)

    def convertLL2UTM(self):
    
        xy_zone = self.proj_UTM(self.lon, self.lat)
        self.x = xy_zone[0]#-self.e_o
        self.y = xy_zone[1]#-self.n_o




if __name__ == '__main__':
     
    rospy.init_node('utm_node', anonymous=True)

    gps_parser = Converter()

    rospy.spin()
    
