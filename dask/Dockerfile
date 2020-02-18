FROM registry.cn-shanghai.aliyuncs.com/wmn/cuda:3.6.10-slim

RUN pip3 install dask[complete] jupyter jupyterlab

RUN mkdir ~/.pip

COPY pip.conf ~/.pip

