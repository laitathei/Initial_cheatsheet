#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

echo "Download Chinese input  "
sudo apt-get install fcitx
echo "Finish download Chinese input  "

echo "Download ROS-melodic version  "
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt-get install ros-melodic-desktop-full
rosdep init
rosdep update
sudo apt-get install ros-melodic-catkin python-catkin-tools
sudo apt-get install ros-melodic-mavros ros-melodic-mavros-extras
echo "Finish download ROS-melodic version  "

echo "Finish download Gazebo 9 version  "
sudo apt-get install ros-melodic-gazebo-ros-pkgs ros-melodic-gazebo-ros-control
echo "Download Gazebo 9 version  "

echo "Download ROS bag required extra package"
sudo apt-get install ffmpeg
sudo apt-get install ubuntu-restricted-extras
sudo apt-get install ros-melodic-ros-control ros-melodic-ros-controllers
sudo apt-get install ros-melodic-joint-state-publisher-gui
sudo apt-get install ros-melodic-hector-gazebo-plugins
sudo apt-get install ros-melodic-turtlebot*
sudo apt-get install ros-melodic-gmapping
sudo apt-get install ros-melodic-turtlebot3-teleop
sudo apt-get install ros-melodic-octomap
sudo apt-get install ros-melodic-octomap-mapping
sudo apt-get install ros-melodic-octomap-rviz-plugins
sudo apt-get install ros-melodic-octomap-ros
sudo apt-get install ros-melodic-octomap-server
sudo apt-get install ros-melodic-apriltag-ros
sudo apt-get install ros-melodic-find-object-2d
sudo apt-get install ros-melodic-map-*
sudo apt-get install ros-melodic-rtabmap ros-melodic-rtabmap-ros
echo "Finish download ROS bag required extra package"

echo "Download tmux package"
sudo apt install tmux
echo "Finish download tmux package"

echo "Download ROS-Hector package"
sudo apt-get install ros-melodic-hector-sensors-description
sudo apt-get install ros-melodic-hector-slam
echo "Finish download ROS-Hector package"

echo "Download ROS keyboard control package"
sudo apt-get install ros-melodic-teleop-twist-keyboard
echo "Finish download ROS keyboard control package"

echo "Download GDAL libraries package"
sudo apt-get install gdal-bin libgdal-dev python-gdal
echo "Finish download GDAL libraries package"

echo "Download Kinectv2 package"
sudo apt-get install build-essential cmake pkg-config libturbojpeg libjpeg-turbo8-dev mesa-common-dev freeglut3-dev libxrandr-dev libxi-dev 
sudo apt-get install libglfw3-dev
sudo apt-get install libopenni2-dev
sudo apt-get install libusb-1.0-0-dev
sudo apt-get install libturbojpeg0-dev
echo "Finish download Kinectv2 package"

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



























