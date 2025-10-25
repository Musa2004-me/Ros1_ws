#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist
import math
import time
import threading
from turtlesim.srv import SetPen, TeleportAbsolute
from std_srvs.srv import Empty


class TurtleCommander:
    def __init__(self):
        rospy.init_node('turtle_commander', anonymous=True)
        rospy.loginfo("TurtleCommander ready...")

        # Publisher to turtlesim velocity
        self.cmd_vel_pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)

        # Subscriber to shape commands
        rospy.Subscriber('shape_command', String, self.shape_callback)

        # Default pen style (can be changed)
        self.pen_r = 0      # red
        self.pen_g = 0      # green
        self.pen_b = 255    # blue
        self.pen_width = 3  # line thickness

        # Stop flag
        self.stop_requested = False

        # Thread handler
        self.shape_thread = None

    # -------------------- Utility --------------------
    def set_pen(self, off=0):
        """Set turtle pen with stored color/width."""
        rospy.wait_for_service('/turtle1/set_pen')
        try:
            client = rospy.ServiceProxy('/turtle1/set_pen', SetPen)
            client(self.pen_r, self.pen_g, self.pen_b, self.pen_width, off)
        except rospy.ServiceException:
            rospy.logwarn("Failed to call /turtle1/set_pen")

    def clear_screen(self):
        """Clear screen and reset turtle position."""
        self.set_pen(off=1)

        # Clear drawings
        rospy.wait_for_service('/clear')
        try:
            clear_client = rospy.ServiceProxy('/clear', Empty)
            clear_client()
        except rospy.ServiceException:
            rospy.logwarn("Failed to call /clear")

        # Reset turtle position
        rospy.wait_for_service('/turtle1/teleport_absolute')
        try:
            teleport_client = rospy.ServiceProxy('/turtle1/teleport_absolute', TeleportAbsolute)
            teleport_client(5.544, 5.544, 0.0)
        except rospy.ServiceException:
            rospy.logwarn("Failed to call /turtle1/teleport_absolute")

        # Restore pen
        self.set_pen(off=0)
        rospy.loginfo("Screen cleared, turtle reset, pen restored.")

    # -------------------- Movements --------------------
    def move_forward(self, speed=1.0, duration=0.5):
        """Move turtle forward (interruptible)"""
        twist = Twist()
        twist.linear.x = speed
        start_time = time.time()
        while (time.time() - start_time) < duration and not self.stop_requested:
            self.cmd_vel_pub.publish(twist)
            time.sleep(0.01)
        self.stop()

    def rotate(self, angle, speed=1.0):
        """Rotate turtle by a given angle (rad, interruptible)."""
        duration = abs(angle) / speed
        twist = Twist()
        twist.angular.z = speed if angle > 0 else -speed
        start_time = time.time()
        while (time.time() - start_time) < duration and not self.stop_requested:
            self.cmd_vel_pub.publish(twist)
            time.sleep(0.01)
        self.stop()

    def stop(self):
        """Stop turtle immediately"""
        twist = Twist()
        self.cmd_vel_pub.publish(twist)
        time.sleep(0.05)

    # -------------------- Shapes --------------------
    def draw_star(self):
        """Draw a 5-pointed star"""
        rospy.loginfo("Drawing a 5-pointed star...")

        side_length = 2.0
        linear_speed = 1.0
        angular_speed = 1.0
        angle = 4 * math.pi / 5   # 144 degrees

        for i in range(5):
            if self.stop_requested:
                break
            duration = side_length / linear_speed
            self.move_forward(linear_speed, duration)
            self.rotate(angle, angular_speed)

        self.stop()
        rospy.loginfo("Star complete.")

    def draw_arrow(self):
        """Draw an arrow shape"""
        rospy.loginfo("Drawing arrow...")
        if self.stop_requested: return

        self.move_forward(1.0, 1.5)
        self.rotate(3*math.pi/4, 1.0)
        self.move_forward(1.0, 0.7)
        self.rotate(-math.pi, 1.0)
        self.move_forward(1.0, 0.7)
        self.rotate(-math.pi/2, 1.0)
        self.move_forward(1.0, 0.7)
        self.rotate(math.pi, 1.0)
        self.move_forward(1.0, 0.7)
        self.rotate(3*math.pi/4, 1.0)
        self.move_forward(1.0, 1.5)
        self.rotate(-math.pi/2, 1.0)
        self.move_forward(1.0, 1.5)
        self.rotate(3*math.pi/4, 1.0)
        self.move_forward(1.0, 0.7)
        self.rotate(-math.pi, 1.0)
        self.move_forward(1.0, 0.7)
        self.rotate(-math.pi/2, 1.0)
        self.move_forward(1.0, 0.7)
        self.rotate(math.pi, 1.0)
        self.move_forward(1.0, 0.7)
        self.rotate(3*math.pi/4, 1.0)
        self.move_forward(1.0, 1.5)

    def draw_m(self):
        """Draw the letter M"""
        rospy.loginfo("Drawing 'M'...")
        if self.stop_requested: return

        self.rotate(math.pi/3, 1.0)
        self.move_forward(1.0, 1.0)
        self.rotate(-2*math.pi/3, 0.5)
        self.move_forward(1.0, 1.0)
        self.rotate(2*math.pi/3, 0.5)
        self.move_forward(1.0, 1.0)
        self.rotate(-2*math.pi/3, 1.0)
        self.move_forward(1.0, 1.0)
        self.rotate(math.pi/3, 1.0)
        self.move_forward_no_draw(1.0, 1.0)

    def draw_u(self):
        """Draw the letter u"""
        rospy.loginfo("Drawing 'u'...")
        if self.stop_requested: return

        self.rotate(math.pi/2, 1.0)
        self.move_forward(1.0, 1.0)
        self.rotate(-math.pi, 1.0)
        self.move_forward(1.0, 1.0)
        self.rotate(math.pi/2, 1.0)
        self.move_forward(1.0, 1.0)
        self.rotate(math.pi/2, 1.0)
        self.move_forward(1.0, 1.0)
        self.rotate(-math.pi, 1.0)
        self.move_forward(1.0, 1.0)
        self.rotate(math.pi/2, 1.0)

    def move_forward_no_draw(self, speed=1.0, duration=1.0):
        """Move forward without drawing a line"""
        self.set_pen(off=1)
        self.move_forward(speed, duration)
        self.set_pen(off=0)

    # -------------------- Utility for Movement --------------------
    def move_straight(self, distance, speed=1.5):
        if self.stop_requested: return
        duration = distance / speed
        twist = Twist()
        twist.linear.x = speed
        start_time = time.time()
        while (time.time() - start_time) < duration and not self.stop_requested:
            self.cmd_vel_pub.publish(twist)
            time.sleep(0.02)
        self.stop()

    def rotate_angle(self, angle_rad, speed=1.0):
        if self.stop_requested: return
        duration = abs(angle_rad) / speed
        twist = Twist()
        twist.angular.z = speed if angle_rad > 0 else -speed
        start_time = time.time()
        while (time.time() - start_time) < duration and not self.stop_requested:
            self.cmd_vel_pub.publish(twist)
            time.sleep(0.02)
        self.stop()

    def pen_up_move(self, distance, direction_rad=None):
        self.set_pen(off=1)
        if direction_rad is not None:
            self.rotate_angle(direction_rad, speed=2.0)
        self.move_straight(distance)
        self.set_pen(off=0)

    def reset_for_next_letter(self, distance=1.0):
        self.pen_up_move(distance, direction_rad=-math.pi/2)
        self.rotate_angle(math.pi/2)

    # -------------------- Callback --------------------
    def run_shape(self, shape):
        self.stop_requested = False

        if shape == '1':
            self.draw_m()
            self.draw_u()
        elif shape == '2':
            self.draw_star()
        elif shape == '3':
            self.draw_arrow()
        elif shape == '4':
            rospy.loginfo("Stop requested!")
            self.stop_requested = True
            self.stop()
            return
        elif shape == '5':
            self.clear_screen()
            return

        rospy.loginfo("Shape finished or stopped.")

    def shape_callback(self, msg):
        shape = msg.data.lower()
        rospy.loginfo(f"Received command: {shape}")

        if self.shape_thread and self.shape_thread.is_alive():
            rospy.logwarn("Another shape running, stopping it first...")
            self.stop_requested = True
            self.shape_thread.join()

        self.shape_thread = threading.Thread(target=self.run_shape, args=(shape,))
        self.shape_thread.start()


def main():
    node = TurtleCommander()
    rospy.spin()


if __name__ == '__main__':
    main()
