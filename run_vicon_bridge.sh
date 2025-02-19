docker run -it --network host --ipc host --privileged --restart always \
    -e VICON_IP=192.168.1.2 \
    --name vicon_bridge2 \
    vicon_bridge2:c3lab bash -i -c "ros2 launch vicon_bridge2 vicon.launch.py" 
