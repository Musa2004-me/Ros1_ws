cmake_minimum_required(VERSION 3.0.2)
project(musa)

## Find catkin and required components
find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
  geometry_msgs
  turtlesim
  std_srvs
  message_generation
  actionlib_msgs
)

## Declare message files
add_message_files(
  FILES
  Num.msg
)

## Declare service files
add_service_files(
  FILES
  AddTwoInts.srv
)

## Declare action files
add_action_files(
  DIRECTORY action
  FILES
  Counter.action
)

## Generate added messages, services, and actions
generate_messages(
  DEPENDENCIES
  std_msgs
  actionlib_msgs
)

## Declare the catkin package
catkin_package(
  CATKIN_DEPENDS
    message_runtime
    rospy
    std_msgs
    geometry_msgs
    turtlesim
    std_srvs
    actionlib_msgs
)

## Include directories
include_directories(
  ${catkin_INCLUDE_DIRS}
)

## Install Python scripts (ROS nodes)
catkin_install_python(PROGRAMS
  scripts/shape_node.py
  scripts/turtle_commander.py
  scripts/talker.py
  scripts/listener.py
  scripts/talker_msg.py
  scripts/listener_msg.py
  scripts/add_two_ints_server.py
  scripts/add_two_ints_client.py
  scripts/action_server.py
  scripts/action_client.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

## Install launch files
install(DIRECTORY launch/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)
