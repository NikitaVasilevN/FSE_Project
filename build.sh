#!/bin/bash
export OpenCV_DIR=/calc_n_draw/opencv/build
mkdir -p build && cd build && cmake .. && make
