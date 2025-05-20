FROM homebrew/brew:latest AS pgm_base

# # small test version
# RUN apt-get update && apt-get install -y curl

# # Enable brew
# RUN export NONINTERACTIVE=1
# RUN ["/bin/bash '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)'"]

RUN brew install \
    git \
    boost eigen nlohmann-json msgpack-cxx doctest \
    cmake gcc@14 ninja pkg-config \
    gdb python@3.13

ENV CMAKE_PREFIX_PATH=/home/linuxbrew/.linuxbrew
ENV CXX=/home/linuxbrew/.linuxbrew/Cellar/gcc/14.2.0_1/bin/g++-14
ENV CC=/home/linuxbrew/.linuxbrew/Cellar/gcc/14.2.0_1/bin/gcc-14

RUN $CXX --version
RUN $CC --version

RUN ln -sf /home/linuxbrew/.linuxbrew/Cellar/gcc/14.2.0_1/bin/g++-14 g++
RUN ln -sf /home/linuxbrew/.linuxbrew/Cellar/gcc/14.2.0_1/bin/gcc-14 gcc
