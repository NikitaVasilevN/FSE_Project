#!/bin/bash
export OpenCV_DIR=$(cat opencv_dir_keeper)
echo "I'm in build"
echo $OpenCV_DIR
echo "I'm in build"
echo "2"
echo "2"
echo "2"
mkdir -p build && cd build && cmake .. && make
cd ..
