<<<<<<< HEAD
#!/usr/env/bin bash
=======
#!/bin/bash
#apt clean
>>>>>>> 66db99cd516227a65bb64f17953a516dfffe69d4
apt update
apt install cmake g++ unzip wget -y
mkdir opencv && cd opencv
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.x.zip
unzip opencv.zip && mkdir -p build && cd build && cmake -DBUILD_LIST=imgproc,imgcodecs ../opencv-4.x && make -j 3
export OpenCV_DIR=$(pwd)
cd ..
rm opencv.zip
