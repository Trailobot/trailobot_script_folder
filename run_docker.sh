#!/bin/bash
# This script starts the Docker container if it's not running and then executes a command inside it

# Container name
CONTAINER_NAME="trailobot_v4"
source ~/.bashrc
export DISPLAY=:0
xhost +local:root
# Check if the container is running
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Container $CONTAINER_NAME is already running."
else
    echo "Starting container $CONTAINER_NAME..."
    docker start $CONTAINER_NAME
fi

# Execute the command inside the container
docker exec -it $CONTAINER_NAME bash -c "export ROS_DOMAIN_ID=21 && source ~/ros2_ws/install/setup.bash && ros2 run ros2_qt ros2_qt"
