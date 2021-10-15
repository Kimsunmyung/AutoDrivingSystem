#!usr/bin/env python

import os
import rospy
import rospkg
import numpy as np
from math import cos, sin, pi, sqrt, pow
from geometry_msgs.msg import Point32, PoseStamped
from sensor_msgs.msg import PointCloud
from nav_msgs.msg import Odometry,Path
from std_msgs.msg import Float64

class Dijkstra:
    def __init__(self, nodes):
        self.nodes = nodes
        self.weight = self.get_weight_metrix()
        
    def get_weight_metrix(self):
        
        weight - [[cost_max]*len(self.nodes) for i in range(len(self.nodes))]
        for node in self.nodes:
            if node.to_node != None:
                weight[node.idx][node.to_node.idx] = node.get_link_cost()
            seight[node.idx][node.idx] = 0
        return weight

    def find_nearest_node_idx(self, distance, s):
        min_value = float('inf')
        min_idx = -1
        
        for idx in range(len(self.nodes)):
            if distance[idx] < min_value and s[idx] == False:
                min_value = distance[idx]
                min_idx = idx
            return min_idx
        
    def find_shortest_path(self, start_node_idx, end_node_idx):
        s = [False for i in range(len(self.nodes))]
        from_node = [start_node_idx for i in range(len(self.nodes))]
        
        s[start_node_idx] = True
        distance = self.weight[start_node_idx]

        for i in range(len(self.nodes)-1):
            selected_node_idx = self.find_nearest_node_idx(distance, s)
            if selected_node_idx == -1:
                break
            
            s[selected_node_idx] = True
            
            for to_node_idx in range(len(self.nodes)):
                if s[to_node_idx] == Flase:
                    distance_candidate = distance[selected_node_idx] + self.weight[selected_node_idx][to_node_idx]
                    distance[to_node_idx] = distance_candidate
                    from_node[to_node_idx] = selected_node_idx
        
        tracking_idx = end_node_idx
        node_path = [end_node_idx]
        
        while start_node_idx != tracking_idx:
            tracking_idx = from_node[tracking_idx]
            node_path.append(tracking_idx)
        
        node_path.reverse()
        return node_path, distance[end_node_idx]

