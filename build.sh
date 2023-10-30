#!/bin/bash
export OpenCV_DIR=$(cat opencv_dir_keeper)
mkdir -p build && cd build && cmake .. && make
cd ..