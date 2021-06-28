# Lab05 Moveit Demonstration

## Setting Up Lab
### Commands To Run Before Starting Lab

```
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
sudo apt-key del 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo -E apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt clean && sudo apt update
```
### Create A Catkin Workspace

In the home directory, create a workspace for lab05 using the following command

```
mkdir -p ~/lab05_ws/src
```

### Download Example Moveit Code

Within your Lab05 workspace, download the moveit tutorials as well as the panda_moveit_config package

```
cd ~/lab05_ws/src
git clone https://github.com/ros-planning/moveit_tutorials.git -b melodic-devel
git clone https://github.com/ros-planning/panda_moveit_config.git -b melodic-devel
```

### Build Your Workspace

Run this command to install all dependencies needed for the moveit tutorials. If this command fails make sure you have run the pre commands prior to running this command
```
cd ~/lab05_ws/src
rosdep install -y --from-paths . --ignore-src --rosdistro melodic
```

Make workspace using catkin_make
```
cd ~/lab05_ws
catkin_make
```

Source workspace using the following command
```
source ~/lab05_ws/devel/setup.bash
```
### Launching Moveit

Run the following command to launch the demo
```
roslaunch panda_moveit_config demo.launch rviz_tutorial:=true
```
