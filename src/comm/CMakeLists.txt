cmake_minimum_required(VERSION 2.8.3)
project(comm)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS 
    roscpp 
    rospy 
    std_msgs 
    message_generation 
)

## Declare ROS messages and services
# add_message_files(FILES)
add_service_files(
    FILES 
    msg.srv
)

## Generate added messages and services
generate_messages(
    DEPENDENCIES 
    std_msgs
)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(node1 src/node1.cpp)
target_link_libraries(node1 ${catkin_LIBRARIES})
add_dependencies(node1 node1_generate_messages_cpp)


add_executable(node2 src/node2.cpp)
target_link_libraries(node2 ${catkin_LIBRARIES})
add_dependencies(node2 node2_generate_messages_cpp)
