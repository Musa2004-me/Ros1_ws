#!/usr/bin/env python3

import subprocess
import time
import os

# Make sure ROS environment is sourced
os.environ["ROS_MASTER_URI"] = "http://localhost:11311"
os.environ["ROS_HOSTNAME"] = "localhost"

# Start roscore (optional if not already running)
try:
    subprocess.Popen(["roscore"])
    time.sleep(3)  # Give roscore time to start
except Exception as e:
    print(f"roscore already running or failed: {e}")

# Launch turtlesim node
turtlesim = subprocess.Popen(["rosrun", "turtlesim", "turtlesim_node"])
time.sleep(1)

# Launch your turtle_commander.py node from the musa package
turtle_commander = subprocess.Popen(["rosrun", "musa", "turtle_commander.py"])

try:
    # Keep the script running
    while True:
        time.sleep(1)
except KeyboardInterrupt:
    print("\nShutting down nodes...")
    turtlesim.terminate()
    turtle_commander.terminate()
