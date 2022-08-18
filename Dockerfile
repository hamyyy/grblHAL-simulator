

FROM rikorose/gcc-cmake


LABEL maintainer="oudy_1999@hotmail.com"
LABEL version="0.0.1"
LABEL description="This is custom Docker Image for grblHAL simulator."

COPY . /sim
RUN mkdir /sim/build


WORKDIR "/sim/build"
RUN cmake ..
RUN make

CMD ["/sim/build/grblHAL_sim", "-p", "4000"]
EXPOSE 4000

