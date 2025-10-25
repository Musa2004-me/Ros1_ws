#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

class ShapeNode:
    def __init__(self):
        # Initialize ROS 1 node
        rospy.init_node('shape_node', anonymous=True)
        self.publisher = rospy.Publisher('shape_command', String, queue_size=10)
        rospy.loginfo("ShapeNode started...")

    def run(self):
        rate = rospy.Rate(0.5)  # 0.5 Hz = every 2 seconds
        while not rospy.is_shutdown():
            print("\nChoose a shape:")
            print("1. mu")
            print("2. star")
            print("3. arrow")
            print("4. stop")
            print("5. clear")
            choice = input("Enter your choice: ").strip().lower()

            msg = String()
            msg.data = choice
            self.publisher.publish(msg)
            rospy.loginfo(f"Published shape: {choice}")

            rate.sleep()

if __name__ == '__main__':
    try:
        node = ShapeNode()
        node.run()
    except rospy.ROSInterruptException:
        pass
