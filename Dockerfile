FROM ubuntu:22.04

# for grpc repo setup
ENV MY_INSTALL_DIR /root/.local
ENV PATH $MY_INSTALL_DIR/bin:$PATH

RUN apt update && \
    apt install -y cmake build-essential autoconf libtool pkg-config git zip unzip && \
    mkdir -p $MY_INSTALL_DIR

CMD /bin/bash