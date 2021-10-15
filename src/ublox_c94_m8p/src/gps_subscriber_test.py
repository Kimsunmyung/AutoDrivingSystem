#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import NavSatFix
from std_msgs.msg import String

class gps_subscriber_sample:
    def __init__(self, nodeName):
        self.nodeName = nodeName
        rospy.init_node("%s_client"%(self.nodeName),anonymous=True)
        rospy.Subscriber("%s/get_UTM"%(self.nodeName), NavSatFix, self.callback_utm)
        rospy.Subscriber("%s/get_time"%(self.nodeName), String, self.callback_time)
        rospy.Subscriber("%s/get_speed"%(self.nodeName), String, self.callback_speed)
        rospy.spin()

    def callback_utm(self, msg):
        print("************************")
        print("STAMP: %s"%(str(msg.header.stamp)))
        print("LATI: %s"%(str(msg.latitude)))
        print("LONG: %s"%(str(msg.longitude)))

    def callback_time(self, msg):
        print("TIME: %s"%(str(msg.data)))
    
    def callback_speed(self, msg):
        print("SPD: %skm/h"%(str(msg.data)))

if __name__=='__main__':
    try:
        listen_class = gps_subscriber_sample("gps_node")
    except rospy.ROSInterruptException:
        pass