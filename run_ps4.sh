#!/bin/bash

CONTAINER_NAME="trailobot_v4"
source ~/.bashrc
export ROS_DOMAIN_ID=21
source /opt/ros/foxy/setup.bash

ros2 run joy joy_node