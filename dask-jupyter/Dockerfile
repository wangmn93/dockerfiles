FROM registry.cn-shanghai.aliyuncs.com/wmn/cuda:3.6.10-slim

RUN pip3 install dask[complete] jupyter jupyterlab

RUN mkdir ~/.pip

RUN echo "[global]" >> ~/.pip/pip.config
RUN echo "index-url = http://mirrors.cloud.aliyuncs.com/pypi/simple/" >> ~/.pip/pip.config
RUN echo "[install]" >> ~/.pip/pip.config
RUN echo "trusted-host = mirrors.cloud.aliyuncs.com" >> ~/.pip/pip.config

