#!/usr/bin/python

import sys
import csv
import rospy
import rospkg

from morai_msgs.msg import VehicleSpecDetails, VehicleSpecDetail

class VehicleSpecLoud:
    def __init__(self,absPath):
        self.absPath = absPath
        self.filePath = self.absPath + '/spec/'+'/vehicle_spec.csv'
        self.specList = VehicleSpecDetails()
        self.fileLoad()

    def fileLoad(self):
        with open(self.filePath, 'r') as spec_raw:
            next(spec_raw)
            loadfile = csv.reader(spec_raw, delimiter = ',')
            for data in loadfile:
                tmpData = VehicleSpecDetail()
                
                tmpData.vehicle_name = data[0]
                tmpData.length = float(data[1])
                tmpData.width = float(data[2])
                tmpData.height = float(data[3])
                tmpData.wheelbase = float(data[4])
                tmpData.front_overhang = float(data[5])
                tmpData.rear_overhang = float(data[6])
                self.specList.specs.append(tmpData)
            #     print(tmpData.length + tmpData.width)
            print(self.specList)
                

if __name__ == "__main__":
    rospy.init_node('vehicle_spec_load', anonymous=False)
    rospack = rospkg.RosPack()
    setDirectory = rospack.get_path('evasion_algorithm')
    vehi = VehicleSpecLoud(setDirectory)
    pub_spec = rospy.Publisher('specs',VehicleSpecDetails, queue_size=1)
    rosrate = rospy.Rate(60)
    while not rospy.is_shutdown():
        speclist = vehi.specList
        pub_spec.publish(speclist)
        rosrate.sleep()
        # sys.exit(0)

