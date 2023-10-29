<<<<<<< HEAD
#!/usr/env/bin bash
echo $OpenCV_DIR
mkdir -p build && cd build && cmake .. && make
=======
#!/bin/bash
export OpenCV_DIR=/calc_n_draw/opencv/build
mkdir -p build && cd build && cmake .. && make
>>>>>>> 66db99cd516227a65bb64f17953a516dfffe69d4
