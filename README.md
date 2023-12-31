# Team10 project: Calc'N'Draw

In this project, we take several integer numbers from stdin, calculate mathematical properties of the numbers and print them in stdout, text file and image. The text file and the image are stored in Docker volume.  

### Quickstart:

1. Download files from the repository:
`git clone https://github.com/NikitaVasilevN/FSE_Project.git`
2. Change your directory to the one with downloaded repository
`cd FSE_Project`
3. Build the Docker image from the Dockerfile:
`docker build -t team10 .`
4. Launch the container
`docker run -it --rm -v team10_volume:/calc_n_draw team10`
5. Follow the instructions
6. Results are stored in files `results.txt` and `results.jpg` in Docker volume `team10_volume`


### Development:

1. Run an empty ubuntu:23.04 container:
`docker run -it  ubuntu:23.04`
2. `apt update && apt install git`
3. Clone the repo
`git clone https://github.com/NikitaVasilevN/FSE_Project.git`
4. `cd FSE_Project`
5. Make the files executables
`chmod +x prereqs.sh`
`chmod +x build.sh`
`chmod +x run_tests.sh`
6.  Run the scripts:
`. prereqs.sh`
`. build.sh`
`. run_tests.sh`
7. Run the app:
`build/CalcAndDraw`

* Source code of the project is placed in the file `project_with_images.cpp`. We use math functions from standart libraries, but if you will need more sophisticated ones, you should add a new library with a desired functionality. In that case you will need to build desired libraries and add them to `CMakeLists.txt` to make it possible to include them into your source file.

* We use library `OpenCV` for visualization. If you would like to change functionality, probably you will need to change list of packages of OpenCV that are built. Other option is to remove option `-DBUILD_LIST=<modules>` in `build.sh` and include the whole opencv library, but building opencv takes a lot of time.

* Results of calculations are stored in Docker volume "team10_volume".