#!/usr/bin/env python3
import rospy
from musa.msg import Num

def talker():
    pub = rospy.Publisher('chatter', Num, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(1)  # 1 Hz
    msg = Num()

    while not rospy.is_shutdown():
        msg.num += 1
        rospy.loginfo(f"Publishing: {msg.num}")
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
