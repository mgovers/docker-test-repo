FROM ubuntu:24.04 AS pgm_base

# Install packages
RUN apt-get update
RUN apt-get install -y cmake git ninja-build gcc-13 g++-13 clang-18
RUN ln -s /usr/bin/clang-18 /usr/local/bin/clang
RUN ln -s /usr/bin/clang++-18 /usr/local/bin/clang++
RUN ln -s /usr/bin/gcc-13 /usr/local/bin/gcc
RUN ln -s /usr/bin/g++-13 /usr/local/bin/g++

# Enable brew
RUN echo "/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin" >> $GITHUB_PATH

# Install C++ dependencies
RUN brew install boost eigen nlohmann-json msgpack-cxx doctest
