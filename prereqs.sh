#!/bin/bash
#apt clean
apt update
apt install cmake g++ unzip wget -y
mkdir opencv && cd opencv
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.x.zip
unzip opencv.zip && mkdir -p build && cd build && cmake -DBUILD_LIST=imgproc,imgcodecs ../opencv-4.x && make -j 3
export OpenCV_DIR=$(pwd)
echo $OpenCV_DIR
echo $OpenCV_DIR
echo $OpenCV_DIR
echo $OpenCV_DIR
echo $OpenCV_DIR
cd ..
rm opencv.zip
