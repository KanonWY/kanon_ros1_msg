# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kaon_msg1: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ikaon_msg1:/home/kanon/ros_code/kaon_msg1/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)

add_custom_target(kaon_msg1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kanon/ros_code/kaon_msg1/msg/kanon_1.msg" NAME_WE)
add_custom_target(_kaon_msg1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kaon_msg1" "/home/kanon/ros_code/kaon_msg1/msg/kanon_1.msg" ""
)

#
#  langs = gencpp
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kaon_msg1
  "/home/kanon/ros_code/kaon_msg1/msg/kanon_1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kaon_msg1
)

### Generating Services

### Generating Module File
_generate_module_cpp(kaon_msg1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kaon_msg1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kaon_msg1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kaon_msg1_generate_messages kaon_msg1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kanon/ros_code/kaon_msg1/msg/kanon_1.msg" NAME_WE)
add_dependencies(kaon_msg1_generate_messages_cpp _kaon_msg1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kaon_msg1_gencpp)
add_dependencies(kaon_msg1_gencpp kaon_msg1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kaon_msg1_generate_messages_cpp)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kaon_msg1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kaon_msg1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kaon_msg1_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
