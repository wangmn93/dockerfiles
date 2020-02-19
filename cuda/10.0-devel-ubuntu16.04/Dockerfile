FROM nvidia/cuda:10.0-devel-ubuntu16.04

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    python3-dev \
    python3-pip \
    python3-wheel \
    python3-setuptools \
    nano && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*