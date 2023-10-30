#!/bin/bash
#apt clean
apt update
apt install cmake g++ unzip wget -y
mkdir opencv && cd opencv
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.x.zip
unzip opencv.zip && mkdir -p build && cd build && cmake -DBUILD_LIST=imgproc,imgcodecs ../opencv-4.x && make -j 3
export OpenCV_DIR=$(pwd)
cd ..
rm opencv.zip
cd ..
touch opencv_dir_keeper
echo $OpenCV_DIR > opencv_dir_keeper