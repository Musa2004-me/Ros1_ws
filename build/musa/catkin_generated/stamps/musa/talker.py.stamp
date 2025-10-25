#!/usr/bin/env python3
# This script is a basic ROS publisher node.

import rospy
from std_msgs.msg import String

def talker():
    # Initialize the publisher.
    # Topic: 'chatter', Message Type: String, Queue Size: 10
    pub = rospy.Publisher('chatter', String, queue_size=10)

    # Initialize the node. The name must be unique.
    # anonymous=True appends random numbers to the node name to prevent conflicts.
    rospy.init_node('talker', anonymous=True)

    # Define the loop rate (10 times per second)
    rate = rospy.Rate(10) # 10hz 

    # Loop until the ROS system shuts down (e.g., Ctrl+C is pressed)
    while not rospy.is_shutdown():
        # The message to be published
        hello_str = "hello world"
        
        # Log the message (optional, but good for debugging)
        rospy.loginfo(f"Publishing: {hello_str}")

        # Publish the message
        pub.publish(hello_str)
        
        # Wait for the next cycle
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        # Catch exception when the node is shut down
        pass