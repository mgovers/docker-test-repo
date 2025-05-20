FROM ubuntu:24.04 AS pgm_base

# Install packages
RUN apt-get update
RUN apt-get install -y \
    wget \
    curl \
    zip \
    unzip \
    tar \
    git \
    build-essential \
    gcovr \
    lcov \
    gcc \
    g++ \
    clang-18 \
    make \
    cmake \
    gdb \
    ninja-build \
    pkg-config \
    python3.12 \
    python3.12-dev \
    python3.12-venv \
    python3-pip

RUN EXPORT CXX=clang++-18            # or g++-13
RUN EXPORT CC=clang-18               # gcc-13
RUN EXPORT CMAKE_PREFIX_PATH=/home/linuxbrew/.linuxbrew
RUN EXPORT LLVM_COV=llvm-cov-18
RUN EXPORT CLANG_TIDY=clang-tidy-18  # only if you want to use one of the clang-tidy presets

# Enable brew
RUN NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install C++ dependenciest 
RUN brew install boost eigen nlohmann-json msgpack-cxx doctest
