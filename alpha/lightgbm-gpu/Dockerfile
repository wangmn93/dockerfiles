FROM registry.cn-shanghai.aliyuncs.com/wmn/alpha:dask-cuda-jupyter

RUN apt-get update \
    && apt-get install -y git cmake build-essential libboost-dev libboost-system-dev libboost-filesystem-dev\
    && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp

RUN git clone --recursive https://github.com/microsoft/LightGBM
WORKDIR /tmp/LightGBM
RUN mkdir build
WORKDIR /tmp/LightGBM/build
RUN cmake -DOpenCL_LIBRARY=/usr/local/cuda-10.0/lib64/libOpenCL.so -DOpenCL_INCLUDE_DIR=/usr/local/cuda-10.0/include/ -DUSE_GPU=1 ..
# if you have installed NVIDIA CUDA to a customized location, you should specify paths to OpenCL headers and library like the following:
# cmake -DUSE_GPU=1 -DOpenCL_LIBRARY=/usr/local/cuda/lib64/libOpenCL.so -DOpenCL_INCLUDE_DIR=/usr/local/cuda/include/ ..
RUN make -j$(nproc)

RUN pip3 install setuptools numpy scipy scikit-learn<=0.21.3

WORKDIR /tmp/LightGBM/python-package

RUN python3 setup.py install --precompile

WORKDIR /





