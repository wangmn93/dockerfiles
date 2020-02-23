FROM registry.cn-shanghai.aliyuncs.com/wmn/cuda:3.6.10-slim

RUN apt-get update \
    && apt-get install -y gcc nano git\
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install dask[complete] jupyter jupyterlab

RUN mkdir ~/.pip

RUN echo "[global]" >> ~/.pip/pip.conf
RUN echo "index-url = http://mirrors.cloud.aliyuncs.com/pypi/simple/" >> ~/.pip/pip.conf
RUN echo "[install]" >> ~/.pip/pip.conf
RUN echo "trusted-host = mirrors.cloud.aliyuncs.com" >> ~/.pip/pip.conf

WORKDIR /tmp

