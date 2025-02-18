docker run -it --network host --privileged --restart \
    -e VICON_IP=192.168.1.2 \
    always vicon_bridge2:c3lab \
    bash -c "ros2 launch vicon_bridge2 vicon.launch.py"
