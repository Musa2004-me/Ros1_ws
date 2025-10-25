# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "musa: 8 messages, 1 services")

set(MSG_I_FLAGS "-Imusa:/home/musa/ros1_ws/src/musa/msg;-Imusa:/home/musa/ros1_ws/devel/share/musa/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(musa_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/musa/ros1_ws/src/musa/msg/Num.msg" NAME_WE)
add_custom_target(_musa_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "musa" "/home/musa/ros1_ws/src/musa/msg/Num.msg" ""
)

get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterAction.msg" NAME_WE)
add_custom_target(_musa_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "musa" "/home/musa/ros1_ws/devel/share/musa/msg/CounterAction.msg" "musa/CounterFeedback:musa/CounterActionResult:actionlib_msgs/GoalStatus:musa/CounterActionGoal:musa/CounterResult:musa/CounterActionFeedback:musa/CounterGoal:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg" NAME_WE)
add_custom_target(_musa_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "musa" "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg" "musa/CounterGoal:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg" NAME_WE)
add_custom_target(_musa_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "musa" "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg" "actionlib_msgs/GoalStatus:musa/CounterResult:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg" NAME_WE)
add_custom_target(_musa_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "musa" "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:musa/CounterFeedback:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg" NAME_WE)
add_custom_target(_musa_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "musa" "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg" ""
)

get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg" NAME_WE)
add_custom_target(_musa_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "musa" "/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg" ""
)

get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg" NAME_WE)
add_custom_target(_musa_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "musa" "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg" ""
)

get_filename_component(_filename "/home/musa/ros1_ws/src/musa/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_musa_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "musa" "/home/musa/ros1_ws/src/musa/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(musa
  "/home/musa/ros1_ws/src/musa/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/musa
)
_generate_msg_cpp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterAction.msg"
  "${MSG_I_FLAGS}"
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/musa
)
_generate_msg_cpp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/musa
)
_generate_msg_cpp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/musa
)
_generate_msg_cpp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/musa
)
_generate_msg_cpp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/musa
)
_generate_msg_cpp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/musa
)
_generate_msg_cpp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/musa
)

### Generating Services
_generate_srv_cpp(musa
  "/home/musa/ros1_ws/src/musa/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/musa
)

### Generating Module File
_generate_module_cpp(musa
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/musa
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(musa_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(musa_generate_messages musa_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/musa/ros1_ws/src/musa/msg/Num.msg" NAME_WE)
add_dependencies(musa_generate_messages_cpp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterAction.msg" NAME_WE)
add_dependencies(musa_generate_messages_cpp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg" NAME_WE)
add_dependencies(musa_generate_messages_cpp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg" NAME_WE)
add_dependencies(musa_generate_messages_cpp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg" NAME_WE)
add_dependencies(musa_generate_messages_cpp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg" NAME_WE)
add_dependencies(musa_generate_messages_cpp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg" NAME_WE)
add_dependencies(musa_generate_messages_cpp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg" NAME_WE)
add_dependencies(musa_generate_messages_cpp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/src/musa/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(musa_generate_messages_cpp _musa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(musa_gencpp)
add_dependencies(musa_gencpp musa_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS musa_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(musa
  "/home/musa/ros1_ws/src/musa/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/musa
)
_generate_msg_eus(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterAction.msg"
  "${MSG_I_FLAGS}"
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/musa
)
_generate_msg_eus(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/musa
)
_generate_msg_eus(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/musa
)
_generate_msg_eus(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/musa
)
_generate_msg_eus(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/musa
)
_generate_msg_eus(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/musa
)
_generate_msg_eus(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/musa
)

### Generating Services
_generate_srv_eus(musa
  "/home/musa/ros1_ws/src/musa/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/musa
)

### Generating Module File
_generate_module_eus(musa
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/musa
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(musa_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(musa_generate_messages musa_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/musa/ros1_ws/src/musa/msg/Num.msg" NAME_WE)
add_dependencies(musa_generate_messages_eus _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterAction.msg" NAME_WE)
add_dependencies(musa_generate_messages_eus _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg" NAME_WE)
add_dependencies(musa_generate_messages_eus _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg" NAME_WE)
add_dependencies(musa_generate_messages_eus _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg" NAME_WE)
add_dependencies(musa_generate_messages_eus _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg" NAME_WE)
add_dependencies(musa_generate_messages_eus _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg" NAME_WE)
add_dependencies(musa_generate_messages_eus _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg" NAME_WE)
add_dependencies(musa_generate_messages_eus _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/src/musa/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(musa_generate_messages_eus _musa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(musa_geneus)
add_dependencies(musa_geneus musa_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS musa_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(musa
  "/home/musa/ros1_ws/src/musa/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/musa
)
_generate_msg_lisp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterAction.msg"
  "${MSG_I_FLAGS}"
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/musa
)
_generate_msg_lisp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/musa
)
_generate_msg_lisp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/musa
)
_generate_msg_lisp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/musa
)
_generate_msg_lisp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/musa
)
_generate_msg_lisp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/musa
)
_generate_msg_lisp(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/musa
)

### Generating Services
_generate_srv_lisp(musa
  "/home/musa/ros1_ws/src/musa/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/musa
)

### Generating Module File
_generate_module_lisp(musa
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/musa
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(musa_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(musa_generate_messages musa_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/musa/ros1_ws/src/musa/msg/Num.msg" NAME_WE)
add_dependencies(musa_generate_messages_lisp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterAction.msg" NAME_WE)
add_dependencies(musa_generate_messages_lisp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg" NAME_WE)
add_dependencies(musa_generate_messages_lisp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg" NAME_WE)
add_dependencies(musa_generate_messages_lisp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg" NAME_WE)
add_dependencies(musa_generate_messages_lisp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg" NAME_WE)
add_dependencies(musa_generate_messages_lisp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg" NAME_WE)
add_dependencies(musa_generate_messages_lisp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg" NAME_WE)
add_dependencies(musa_generate_messages_lisp _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/src/musa/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(musa_generate_messages_lisp _musa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(musa_genlisp)
add_dependencies(musa_genlisp musa_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS musa_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(musa
  "/home/musa/ros1_ws/src/musa/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/musa
)
_generate_msg_nodejs(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterAction.msg"
  "${MSG_I_FLAGS}"
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/musa
)
_generate_msg_nodejs(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/musa
)
_generate_msg_nodejs(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/musa
)
_generate_msg_nodejs(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/musa
)
_generate_msg_nodejs(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/musa
)
_generate_msg_nodejs(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/musa
)
_generate_msg_nodejs(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/musa
)

### Generating Services
_generate_srv_nodejs(musa
  "/home/musa/ros1_ws/src/musa/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/musa
)

### Generating Module File
_generate_module_nodejs(musa
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/musa
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(musa_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(musa_generate_messages musa_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/musa/ros1_ws/src/musa/msg/Num.msg" NAME_WE)
add_dependencies(musa_generate_messages_nodejs _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterAction.msg" NAME_WE)
add_dependencies(musa_generate_messages_nodejs _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg" NAME_WE)
add_dependencies(musa_generate_messages_nodejs _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg" NAME_WE)
add_dependencies(musa_generate_messages_nodejs _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg" NAME_WE)
add_dependencies(musa_generate_messages_nodejs _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg" NAME_WE)
add_dependencies(musa_generate_messages_nodejs _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg" NAME_WE)
add_dependencies(musa_generate_messages_nodejs _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg" NAME_WE)
add_dependencies(musa_generate_messages_nodejs _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/src/musa/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(musa_generate_messages_nodejs _musa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(musa_gennodejs)
add_dependencies(musa_gennodejs musa_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS musa_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(musa
  "/home/musa/ros1_ws/src/musa/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/musa
)
_generate_msg_py(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterAction.msg"
  "${MSG_I_FLAGS}"
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/musa
)
_generate_msg_py(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/musa
)
_generate_msg_py(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/musa
)
_generate_msg_py(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/musa
)
_generate_msg_py(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/musa
)
_generate_msg_py(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/musa
)
_generate_msg_py(musa
  "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/musa
)

### Generating Services
_generate_srv_py(musa
  "/home/musa/ros1_ws/src/musa/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/musa
)

### Generating Module File
_generate_module_py(musa
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/musa
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(musa_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(musa_generate_messages musa_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/musa/ros1_ws/src/musa/msg/Num.msg" NAME_WE)
add_dependencies(musa_generate_messages_py _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterAction.msg" NAME_WE)
add_dependencies(musa_generate_messages_py _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionGoal.msg" NAME_WE)
add_dependencies(musa_generate_messages_py _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionResult.msg" NAME_WE)
add_dependencies(musa_generate_messages_py _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterActionFeedback.msg" NAME_WE)
add_dependencies(musa_generate_messages_py _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterGoal.msg" NAME_WE)
add_dependencies(musa_generate_messages_py _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterResult.msg" NAME_WE)
add_dependencies(musa_generate_messages_py _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/devel/share/musa/msg/CounterFeedback.msg" NAME_WE)
add_dependencies(musa_generate_messages_py _musa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/musa/ros1_ws/src/musa/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(musa_generate_messages_py _musa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(musa_genpy)
add_dependencies(musa_genpy musa_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS musa_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/musa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/musa
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(musa_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(musa_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/musa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/musa
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(musa_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(musa_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/musa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/musa
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(musa_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(musa_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/musa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/musa
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(musa_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(musa_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/musa)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/musa\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/musa
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(musa_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(musa_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
