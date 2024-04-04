## After dev container starts

```bash
source /opt/ros/humble/setup.bash
export TURTLEBOT3_MODEL=waffle
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/humble/share/turtlebot3_gazebo/models
```


```bash
cd /opt/overlay_ws
source install/setup.bash
```
## Test if everything is working as expected
https://navigation.ros.org/getting_started/index.html#running-the-example
```bash
ros2 launch nav2_bringup tb3_simulation_launch.py headless:=False
```