FROM registry.cn-shanghai.aliyuncs.com/wmn/cuda:10.0-devel-ubuntu18.04

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    python3-dev \
    python3-pip \
    python3-wheel \
    python3-setuptools \
    git \
    nano && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

WORKDIR /tmp

RUN git clone https://github.com/dask/distributed.git

WORKDIR /tmp/distributed

RUN python3 setup.py install

RUN pip3 install bokeh pynvml jupyter jupyterlab jupyter-server-proxy

RUN mkdir ~/.pip

RUN echo "[global]" >> ~/.pip/pip.conf
RUN echo "index-url = http://mirrors.cloud.aliyuncs.com/pypi/simple/" >> ~/.pip/pip.conf
RUN echo "[install]" >> ~/.pip/pip.conf
RUN echo "trusted-host = mirrors.cloud.aliyuncs.com" >> ~/.pip/pip.conf

RUN jupyter notebook --generate-config
RUN echo "c.NotebookApp.password = u'sha1:e894546fae86:f86191b698d0c389de84f0dc6b0840e85fecbdf1'" >> /root/.jupyter/jupyter_notebook_config.py

COPY start.sh /tmp/start.sh

WORKDIR /tmp
