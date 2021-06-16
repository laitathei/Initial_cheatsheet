#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

echo "Download Chinese input  "
sudo apt-get install fcitx
echo "Finish download Chinese input  "

echo "Download ROS-melodic version  "
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt install ros-melodic-desktop-full
rosdep init
rosdep update
sudo apt-get install ros-melodic-catkin python-catkin-tools
sudo apt install ros-melodic-mavros ros-melodic-mavros-extras
echo "Finish download ROS-melodic version  "

echo "Finish download Gazebo 9 version  "
sudo apt install ros-melodic-gazebo9
echo "Download Gazebo 9 version  "

ehco "Download ROS bag required extra package"
sudo apt install ffmpeg
sudo apt-get install ubuntu-restricted-extras
sudo apt-get install ros-melodic-ros-control ros-melodic-ros-controllers
sudo apt-get install ros-melodic-joint-state-publisher-gui
sudo apt-get install ros-melodic-turtlebot*
sudo apt-get install ros-melodic-gmapping
sudo apt-get install ros-melodic-turtlebot3-teleop
sudo apt-get install ros-melodic-rtabmap ros-melodic-rtabmap-ros
ehco "Finish download ROS bag required extra package"

ehco "Download tmux package"
sudo apt install tmux
ehco "Finish download tmux package"

ehco "Download ROS-Hector package"
sudo apt-get install ros-melodic-hector-sensors-description
sudo apt-get install ros-melodic-hector-slam
ehco "Finish download ROS-Hector package"

ehco "Download ROS keyboard control package"
sudo apt-get install ros-melodic-teleop-twist-keyboard
ehco "Finish download ROS keyboard control package"

echo "Download GDAL libraries package"
sudo apt-get install gdal-bin libgdal-dev python-gdal
echo "Finish download GDAL libraries package"

ehco "Download Kinectv2 package"
sudo apt-get install build-essential cmake pkg-config libturbojpeg libjpeg-turbo8-dev mesa-common-dev freeglut3-dev libxrandr-dev libxi-dev 
sudo apt-get install libglfw3-dev
sudo apt-get install libopenni2-dev
sudo apt-get install libusb-1.0-0-dev
sudo apt-get install libturbojpeg0-dev
ehco "Finish download Kinectv2 package"

echo "Download IntelRealsense SDK package"
sudo apt-key adv --keyserver keys.gnupg.net --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo $(lsb_release -cs) main" -u
sudo apt-get install librealsense2-dkms
sudo apt-get install librealsense2-utils
sudo apt-get install librealsense2-dev
sudo apt-get install librealsense2-dbg
echo "Finish download IntelRealsense SDK package"

echo "Lastly update and upgrade all package to latest version"
sudo apt-get update
sudo apt-get upgrade
echo "Finish update and upgrade all package to latest version"



























