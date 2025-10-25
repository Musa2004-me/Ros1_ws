#!/usr/bin/env python3
# This script is a basic ROS subscriber node that listens to the 'chatter' topic.

import rospy
from std_msgs.msg import String

def callback(data):
    """
    Callback function that executes whenever a new message is received 
    on the subscribed topic.
    """
    # Print the received message's data field
    print("I heard: %s" % data.data)

def listener():
    # Initialize the node. The name must be unique.
    # anonymous=True appends random numbers to the node name to prevent conflicts.
    rospy.init_node('listener', anonymous=True)

    # Subscribe to the 'chatter' topic.
    # When a String message is received, the 'callback' function is called.
    rospy.Subscriber("chatter", String, callback)

    # spin() simply keeps python from exiting until this node is stopped.
    # It waits for messages and calls the callback function when one arrives.
    rospy.spin()

if __name__ == '__main__':
    listener()