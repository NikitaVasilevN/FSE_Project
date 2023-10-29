# Team10 project: Calc'N'Draw

### Quickstart:

1. Download files from the repository:
`git clone https://github.com/NikitaVasilevN/FSE_Project.git`
2. Change your directory to the one with downloaded repository
`cd FSE_Project`
3. Build the Docker image from the Dockerfile:
`docker build -t team10 .`
4. Launch the container
`docker run -it --rm -v team10_volume:/calc_n_draw team10`



### Info for the further development:

* Source code of the project is placed in the file `project_with_images.cpp`. We use math functions from standart libraries, but if you will need more sophisticated ones, you should add a new library with a desired functionality. In that case you will need to build desired libraries and add them to `CMakeLists.txt` to make it possible to include them into your source file.

* We use library `OpenCV` for visualization. If you would like to change functionality, probably you will need to change list of packages of OpenCV that are built. Other option is to remove option `-DBUILD_LIST=<modules>` in `build.sh` and include the whole opencv library, but building opencv takes a lot of time.

* Results of calculations are stored in Docker volume "team10_volume".