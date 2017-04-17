#!/bin/bash
set -e  # exit on first error

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# get UBUNTU_CODENAME, ROS_DISTRO, REPO_DIR, CATKIN_DIR
source $SCRIPT_DIR/identify_environment.bash
source /opt/ros/${ROS_DISTRO}/setup.bash

sudo apt-get update

cd ${CATKIN_DIR}

catkin build --no-status
