# Lab05 Moveit Demonstration

## Setting Up Lab
### Commands To Run Before Starting Lab

Download the [lab05_setup.bash](lab05_setup.bash) script to anywhere in your VM, open a terminal with `ctrl + alt + t` and run:
```bash
cd && setup_script=$(find -name lab05_setup.bash 2> /dev/null) && chmod +x $setup_script; bash $setup_script
```
This will find the script, make it executable and run it for you. 

If you are prompted for your password, enter it in the terminal (there is no cursor icon so you don't get visual feedback) and hit enter.

Please be aware that this script may take a while to run and requires an internet connection.

## Step through the given code
### Run the RViz demo

Read through the [MoveIt! Quickstart Rviz guide](http://docs.ros.org/en/melodic/api/moveit_tutorials/html/doc/quickstart_in_rviz/quickstart_in_rviz_tutorial.html)
and familiarise yourself with RViz.

Before running the demonstration, you must tell ROS where the code is (your ROS workspace).

You can 'source' the workspace using the following command:
```bash
source ~/lab05_ws/devel/setup.bash
```
You can now follow through the RViz tutorial.

### Run the C++ Interface demo

Read through the [Move Group C++ Interface](http://docs.ros.org/en/melodic/api/moveit_tutorials/html/doc/move_group_interface/move_group_interface_tutorial.html)
and familiarise yourself with the C++ interface.

You will need 2 terminals for the C++ Interface tutorial.

When you open a new terminal, you must always tell ROS where the ROS workspace is. Note: If you are reusing the terminal from RViz you won't need to run this command in that terminal as ROS knows where the workspace is and the workspace hasn't changed. You will still need to source the workspace setup in the second terminal.

```bash
source ~/lab05_ws/devel/setup.bash
```
You can now follow through the C++ Interface tutorial.

## Completing the lab05 tasks

Once you have stepped through the demo code and understood how it works, try modifying the components to complete the lab tasks.
