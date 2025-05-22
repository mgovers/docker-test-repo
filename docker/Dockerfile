FROM homebrew/brew:latest AS pgm_base

RUN brew install \
    git \
    boost eigen nlohmann-json msgpack-cxx doctest \
    cmake gcc@14 ninja pkg-config gcovr lcov \
    gdb python@3.13 pipx

ENV CMAKE_PREFIX_PATH=/home/linuxbrew/.linuxbrew
ENV PATH="$(brew --prefix)/opt/bin:$(brew --prefix)/opt/python@3.13/libexec/bin:$PATH"

USER root
RUN ln -sf /home/linuxbrew/.linuxbrew/Cellar/gcc/14.2.0_1/bin/g++-14 /usr/bin/g++
RUN ln -sf /home/linuxbrew/.linuxbrew/Cellar/gcc/14.2.0_1/bin/gcc-14 /usr/bin/gcc
RUN ln -sf /home/linuxbrew/.linuxbrew/opt/python@3.13/libexec/bin/python3 /usr/bin/python3
RUN ln -sf /home/linuxbrew/.linuxbrew/opt/python@3.13/libexec/bin/python3.13 /usr/bin/python3.13
