#!/bin/bash

# Immediately catch all errors
set -eo pipefail

# Uncomment for debugging
# set -x
# env

# Enable autocomplete for user
cp /etc/skel/.bashrc ~/

# Check if srv folder exists
if [ -d "$ROOT_SRV" ]; then
    # Setup Nav2 web app
    for dir in $OVERLAY_WS/src/navigation2/.devcontainer/caddy/srv/*; \
        do if [ -d "$dir" ]; then ln -s "$dir" $ROOT_SRV; fi done
fi

# ros2 Sourcing and model paths
echo 'source /opt/ros/humble/setup.bash' >> ~/.bashrc
echo 'export TURTLEBOT3_MODEL=waffle' >> ~/.bashrc
echo 'export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/humble/share/turtlebot3_gazebo/models' >> ~/.bashrc
echo 'cd /opt/overlay_ws && source install/setup.bash && pwd' >> ~/.bashrc