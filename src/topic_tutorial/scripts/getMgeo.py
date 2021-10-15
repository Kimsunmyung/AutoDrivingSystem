#!/usr/bin/env python

import os
import sys
import rospy
from sensor_msgs.msg import PointCloud
from geometry_msgs.msg import Point32

current_path = os.path.dirname(os.path.realpath(__file__))
sys.path.append(current_path)

from lib.mgeo.class_defs import *

load_path = os.path.normpath(os.path.join(current_path, 'lib/mgeo_data/kcity'))
mgeo_planner_map = MGeoPlannerMap.create_instance_from_json(load_path)

node_set = mgeo_planner_map.node_set
link_set = mgeo_planner_map.link_set
nodes = node_set.nodes
links = link_set.lines

# print('# of nodes: ', len(node_set.nodes))
# print('# of links: ', len(link_set.lines))

# for i in link_set.lines:
#     print(i)
# for i in node_set.nodes:
#     print(i)

# print(link_set.lines['A219BS010072'].points)
# print(link_set.lines['A219BS010072'].from_node.idx)
# print(node_set.nodes['A119BS010144'].point)


class pub_node:
    def __init__(self):
        rospy.init_node('test', anonymous=True)
        self.link_pub = rospy.Publisher('link', PointCloud, queue_size=1)
        self.node_pub = rospy.Publisher('node', PointCloud, queue_size=1)
        
        load_path = os.path.normpath(os.path.join(current_path, 'lib/mgeo_data/kcity'))
        mgeo_planner_map = MGeoPlannerMap.create_instance_from_json(load_path)
        
        node_set = mgeo_planner_map.node_set
        link_set = mgeo_planner_map.link_set
        self.nodes = node_set.nodes
        self.links = link_set.lines
        self.link_msg = self.getAllLinks()
        self.node_msg = self.getAllNodes()
        rate = rospy.Rate(1)
        while not rospy.is_shutdown():
            
        
            self.link_pub.publish(self.link_msg)
            self.node_pub.publish(self.node_msg)
        
        rate.sleep()
        
    def getAllLinks(self):
        all_link = PointCloud()
        all_link.header.frame_id = 'map'
        
        for link_idx in self.links:
            for link_point in self.links[link_idx].points:
                tmp_point = Point32()
                tmp_point.x = link_point[0]
                tmp_point.y = link_point[1]
                tmp_point.z = link_point[2]
                all_link.points.append(tmp_point)
        return all_link
    def getAllNodes(self):
        all_node = PointCloud()
        all_node.header.frame_id = 'map'
        
        for node_idx in self.nodes:
                tmp_point = Point32()
                tmp_point.x = self.nodes[node_idx].point[0]
                tmp_point.y = self.nodes[node_idx].point[1]
                tmp_point.z = self.nodes[node_idx].point[2]
                all_node.points.append(tmp_point)
        return all_node
# class pub_node:
#     def __init__(self):
#         rospy.init_node('pub_node', anonymous=True)
#         self.global_path_pub = rospy.Publisher('/sensor_msgs', PointCloud, queue_size=10)
#         self.global_path_msg = PointCloud()
#         self.global_path_msg.header.frame_id = '/map'
#         rate = rospy.Rate(20)
        
#         while not rospy.is_shutdown():
#             for i in node_set.nodes:
#                 tmp_pose = Point32()
                
#                 tmp_pose.x = node_set.nodes[i].point[0]
#                 tmp_pose.y = node_set.nodes[i].point[1]
#                 tmp_pose.z = node_set.nodes[i].point[2]
                
#                 self.global_path_msg.points.append(tmp_pose)
                
#             self.global_path_pub.publish(self.global_path_msg)
#             rate.sleep()
            
if __name__ == '__main__':
    try:
        test_track = pub_node()
    except rospy.ROSInterruptException:
        pass