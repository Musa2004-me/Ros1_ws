#!/usr/bin/env python3
import rospy
from musa.msg import Num

def callback(data):
    rospy.loginfo(f"I heard {data.num}")

def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber('chatter', Num, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
