FROM homebrew/brew:latest AS pgm_base

RUN brew install \
    git
    # boost eigen nlohmann-json msgpack-cxx doctest \
    # cmake gcc@14 ninja pkg-config \
    # gdb python@3.13

ENV CMAKE_PREFIX_PATH=/home/linuxbrew/.linuxbrew

# USER root
# RUN ln -sf /home/linuxbrew/.linuxbrew/Cellar/gcc/14.2.0_1/bin/g++-14 /usr/bin/g++
# RUN ln -sf /home/linuxbrew/.linuxbrew/Cellar/gcc/14.2.0_1/bin/gcc-14 /usr/bin/gcc

