def calcAngleInRange(self, rad, offset,diffL, diffR):
    angleDiff = (rad - offset + float(3) * math.pi) % (float(2) * math.pi) - math.pi
    return (-diffR <= angleDiff <= diffL)

def ObjFilter(self, objectInfo):
    rotMat = np.array([math.sin(self.egoHead), math.cos(self.egoHead)])
    rotWidth = rotMat * (vehicle_width / 2)
    rotFront = np.array([-math.sin(self.egoHead), math.cos(self.egoHead)]) \
        * vehicle_to_front
    egoEndPoseLeft = np.array(self.egoPose + [-rotWidth[0], rotWidth[1]])
    egoEndPoseRight = np.array(self.egoPose + [rotWidth[0], -rotWidth[1]])
    egoFrontPose = self.egoPose + rotFront
    
    for item in objectInfo:
        leftDiff = item.pose - egoEndPoseLeft
        leftAngle = -np.arctan2(leftDiff[0], leftDiff[1])
        rightDiff = item.pose - egoEndPoseLeft
        rightAngle = -np.arctan2(rightDiff[0], rightDiff[1])
        if self.calcAngleInRange(leftAngle, self.egoHead, np.deg2rad(12), np.def2rad(45)) and \
            self.calcAngleInRange(rightAngle, self.egoHead, np.deg2rad(45), np.deg2rad(12)):
                poseDiff = item.pose - egoFrontPose
                distDiff = np.linalgl.norm(poseDiff) - item.size[1]
                tmpAngle = -np.arctan2(poseDiff[0], poseDiff[1]) - self.egoHead
                distDiff *= math.cos(tmpAngle)
                if distDiff < frontDist:
                    frontDist = distDiff