# vicon_bridge2
This repository is the combinition of the two [vicon_bridge](https://github.com/ethz-asl/vicon_bridge), and [ros2-vicon-receiver](https://github.com/OPT4SMART/ros2-vicon-receiver) projects. The ros2-vicon-receiver project uses a custom message with no timestamp and does not broadcast TF messages while vicon_bridge provides these functionalities but has no ROS2 support. To fill this gap, this repository provides a ROS2 package that similar to vicon_bridge, publishes PoseStamped and TF2 messages. 

## Modifications to the fork
- Added some scripts to make the installation process plug and play using docker

## Instructions

### building and launching
Follow these instructions to build and start the container. The container will automatically start at boot (see --restart flag docs on docker).

```
git clone https://github.com/c3lab/vicon_bridge2.git
cd vicon_bridge2
chmod +x build_vicon_bridge.sh
chmod +x run_vicon_bridge.sh
./build_vicon_bridge.sh
./run_vicon_bridge.sh
```
you can close the terminal as this docker container is started with ```--restart``` flag

### using data

Published data are simple geometry messages, so any ros2 instance is able to echo all generated topics (tested on ros2 humble)