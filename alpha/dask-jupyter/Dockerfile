FROM registry.cn-shanghai.aliyuncs.com/wmn/python:3.6.10-slim

RUN apt-get update \
    && apt-get install -y gcc nano git\
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install dask[complete] jupyter jupyterlab jupyter-server-proxy

RUN mkdir ~/.pip

RUN echo "[global]" >> ~/.pip/pip.conf
RUN echo "index-url = http://mirrors.cloud.aliyuncs.com/pypi/simple/" >> ~/.pip/pip.conf
RUN echo "[install]" >> ~/.pip/pip.conf
RUN echo "trusted-host = mirrors.cloud.aliyuncs.com" >> ~/.pip/pip.conf

RUN jupyter notebook --generate-config
RUN echo "c.NotebookApp.password = u'sha1:e894546fae86:f86191b698d0c389de84f0dc6b0840e85fecbdf1'" >> /root/.jupyter/jupyter_notebook_config.py

WORKDIR /

COPY start.sh start.sh

CMD /bin/sh start.sh

