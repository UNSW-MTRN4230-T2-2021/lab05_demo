#!/bin/bash

FILE=$HOME/.updated_vm
if [[ -f "$FILE" ]]; then
    echo "VM already up to date. Exiting..." && exit
fi

printf "Setting up your workspace for Labo05...\n"

sudo -n true 2&> /dev/null || (printf "Please enter your VM password ('777' if unchanged) and hit enter\n" &&
	(sudo echo "authenticated" || (echo "unable to authenticate... exiting" && exit)))

sudo -n true 2&> /dev/null || exit

printf "Updating ROS...\n"

# Keys out of date, need to update a few things
# http://wiki.ros.org/melodic/Installation/Ubuntu
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y

sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential

rosdep update

printf "Ros updated\n\n Updating and installing lab packages\n"

# Make sure everyones at the same state
#http://docs.ros.org/en/melodic/api/moveit_tutorials/html/doc/getting_started/getting_started.html

sudo apt-get install ros-melodic-catkin python-catkin-tools
sudo apt install ros-melodic-moveit

mkdir -p ~/lab_workspaces/lab05_ws/src

cd ~/lab_workspaces/lab05_ws/src
git clone https://github.com/ros-planning/moveit_tutorials.git -b melodic-devel
git clone https://github.com/ros-planning/panda_moveit_config.git -b melodic-devel
git clone -b calibration_devel https://github.com/fmauch/universal_robot.git

rosdep install -y --from-paths . --ignore-src --rosdistro melodic

cd .. && catkin_make

source ~/lab_workspaces/lab05_ws/devel/setup.bash

printf "Finished installing\n"

touch $FILE
