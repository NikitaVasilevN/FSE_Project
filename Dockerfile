FROM ubuntu:23.04

SHELL ["/bin/bash", "-c"]

RUN mkdir calc_n_draw
COPY . /calc_n_draw

WORKDIR calc_n_draw

RUN chmod +x prereqs.sh
RUN chmod +x build.sh

RUN . prereqs.sh
RUN . build.sh
RUN . run_tests.sh

ENTRYPOINT ["build/CalcAndDraw"]