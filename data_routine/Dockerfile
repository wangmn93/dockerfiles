FROM python:3.6.10-slim
RUN apt-get update \
    && apt-get install -y gcc \
    && rm -rf /var/lib/apt/lists/*
RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple oss2 pandas==0.24.2 click jqdatasdk tables luigi
CMD ['python3']
