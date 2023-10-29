#!/usr/env/bin bash
#apt clean
apt update
apt install cmake g++ unzip wget -y
mkdir opencv && cd opencv
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.x.zip
unzip opencv.zip && mkdir -p build && cd build && cmake ../opencv-4.x -DBUILD_LIST=imgproc,imgcodecs && make -j 3
cd ..
rm opencv.zip