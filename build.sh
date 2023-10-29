#!/usr/env/bin bash
echo $OpenCV_DIR
mkdir -p build && cd build && cmake .. && make