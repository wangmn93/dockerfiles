FROM nvidia/cuda:10.0-devel-ubuntu18.04

RUN apt-get update && apt-get install -y python3 python3-pip wget nano && \
    apt-get purge --autoremove -y curl && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install dask[complete] cupy-cuda100 numba

CMD ['dask-scheduler']