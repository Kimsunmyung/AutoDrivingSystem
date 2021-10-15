#!/usr/bin/env python3
import rospy, serial, threading, sys
import numpy as np
from sensor_msgs.msg import NavSatFix
from std_msgs.msg import String
from pyproj import Proj

class gps_publisher:
    def __init__(self, comport, nodeName, baudrate):
        self.nodeName = nodeName
        self.baudrate = baudrate
        self.comm = comport
        self.serial_port = serial.Serial(
            port="/dev/" + self.comm,
            baudrate=self.baudrate,
            bytesize=serial.EIGHTBITS,
            parity=serial.PARITY_NONE,
            stopbits=serial.STOPBITS_ONE,)
        
        self.get_lati = 0.0
        self.get_longti = 0.0
        self.get_kmh = 0.0
        self.get_time = ""

        self.rx_frames = []
        self.thread_run = True
        self.receive_thread = threading.Timer(2, self.serial_threading)
        self.receive_thread.start()
        self.proj_UTM = Proj(proj = 'utm', zone = 52)
        # print(self.proj_UTM)
        self.classRun()
        #self.ros_thread = threading.Timer(1, self.classRun)
        #self.ros_thread.start()

    def convertLL2UTM(self):
    
        xy_zone = self.proj_UTM(self.get_longti_bf, self.get_lati_bf)
        print(xy_zone)
        self.get_lati = xy_zone[0]#-self.e_o
        self.get_longti = xy_zone[1]#-self.n_o
        

    def serial_threading(self):
        while self.thread_run:
            try:
                for c in self.serial_port.read():
                    self.rx_frames.append(chr(c))
                    if c == 13:
                        self.serial_command_receive(''.join(self.rx_frames))
                        del self.rx_frames[:]
                    elif len(self.rx_frames) > 255:
                        del self.rx_frames[:]
            except Exception as e:
                print("Error occurred. Exiting Program: " + str(e))
                self.serial_port.close()
                self.thread_run = False
        print("Close GPS thread.")
    
    def serial_command_receive(self, raw_data):
        split_data = raw_data.split(',')
        publishing_flag = ""
        print(raw_data)
        if split_data[0] == '\n$GNRMC':
            try:
                print(self.parse_lati_longti)
                self.get_lati = self.parse_lati_longti(split_data[3], split_data[4])
                self.get_longti = self.parse_lati_longti(split_data[5], split_data[6])
                self.get_time = self.parse_now_time(split_data[1])
                self.get_kmh = self.parse_kmh(split_data[7])
                publishing_flag = "km/h:%.2f lat:%.9f long:%.9f datatime:%s"%(self.get_kmh, self.get_lati, self.get_longti, str(self.get_time))
                self.convertLL2UTM()
            except: pass
        # elif split_data[0] == '\n$GNGGA':
        #     lat_val = self.dms_to_dec(split_data[2], split_data[3])
        #     long_val = self.dms_to_dec(split_data[4], split_data[5])
        #     datetime = self.format_time(split_data[1])
        #     publishing_flag = "km/h:GGA lat:%s long:%s datatime:%s"%(str(lat_val), str(long_val), str(datetime))
        #     print(publishing_flag)
        # elif split_data[0] == '\n$GNGLL':
        #     lat_val = self.dms_to_dec(split_data[1], split_data[2])
        #     long_val = self.dms_to_dec(split_data[3], split_data[4])
        #     datetime = self.format_time(split_data[5])
        #     publishing_flag = "km/h:GLL lat:%s long:%s datatime:%s"%(str(lat_val), str(long_val), str(datetime))
        #     print(publishing_flag)
        
        if not rospy.is_shutdown() and publishing_flag != "":
            msg = NavSatFix()
            msg.header.stamp = rospy.Time.now()
            msg.header.frame_id = "gps"
            msg.latitude = self.get_lati
            msg.longitude = self.get_longti
            #msg.xxxxxx = get_kmh
            #print(publishing_flag) #console print for check.
            if self.pub_data != None: self.pub_data.publish(msg)
            if self.pub_time != None: self.pub_time.publish(str(self.get_time))
            if self.pub_speed != None: self.pub_speed.publish(str(self.get_kmh))

    def parse_lati_longti(self, value, dir):
        mPos = value.find(".")-2
        degree = float(value[:mPos])
        minute = float(value[mPos:])
        converted_degree = float(degree) + float(minute)/float(60)
        if dir == "W":
            converted_degree = -converted_degree
        elif dir == "S":
            converted_degree = -converted_degree
        return float(round(converted_degree, 8))
    
    def parse_now_time(self, data):
        hour = data[:2]
        minute = data[2:4]
        second = data[4:6]
        timeval = hour + ":" + minute + ":" + second
        return timeval
    
    def parse_kmh(self, data):
        get_knots = float(data)
        get_kmh = get_knots * 1.8
        return get_kmh
    
    def classRun(self):
        if not self.thread_run: return #port connetion fail.

        self.pub_data = rospy.Publisher("%s/get_UTM"%(self.nodeName), NavSatFix, queue_size=1)
        self.pub_time = rospy.Publisher("%s/get_time"%(self.nodeName), String, queue_size=1)
        self.pub_speed = rospy.Publisher("%s/get_speed"%(self.nodeName), String, queue_size=1)

        self.rate = rospy.Rate(20)
        
        rospy.loginfo("GPS Start / Port:%s / Baudrate:%d / Node: %s"%(self.comm, self.baudrate, self.nodeName))
        while not rospy.is_shutdown():
            self.rate.sleep()

        self.thread_run = False

if __name__=='__main__':
    gps_active = None
    node_name = "gps_node"
    start_port = "ttyACM0"
    start_baudrate = 57600
    try: start_port = sys.argv[1]
    except: start_port = "ttyACM0" #default serial port name

    try: start_baudrate = int(sys.argv[2])
    except: start_baudrate = 57600 #default serial baudrate

    try:
        rospy.init_node(node_name, anonymous = True)
        gps_active = gps_publisher(start_port, node_name, start_baudrate)
    except rospy.ROSInterruptException:
        gps_active.thread_run = False