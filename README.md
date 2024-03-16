## How to install ros_msg to system?

## 1. set some option
```cmake
# limit conflict file gen
set(CATKIN_INSTALL_INTO_PREFIX_ROOT OFF)

# disable testing
cmake_policy(SET CMP0077 NEW)
set(CATKIN_ENABLE_TESTING OFF)

# disbale gen some languages interface
set(ENV{ROS_LANG_DISABLE} "genlisp;geneus;genpy;gennodejs")

```
## 2. use CPack
```cmake

# define install dir
set(CPACK_PACKAGING_INSTALL_PREFIX "/opt/ros/$ENV{ROS_DISTRO}")

set(CPACK_PACKAGE_NAME "mypackagename")
set(CPACK_GENERATOR "DEB")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "jialomg62@gmail.com")
include(CPack)

```