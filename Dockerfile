FROM nvidia/cuda:10.0-devel-ubuntu18.04
LABEL maintainer="agis"

RUN    apt update  -qy
RUN    apt upgrade -qy
RUN    apt install -qy python3-pip

RUN    apt install -qy vim 
RUN    apt install -qy git
RUN    pip3 install -q pandas
RUN    pip3 install -q matplotlib
RUN    pip3 install -q keras
RUN    pip3 install -q scikit-learn
RUN    pip3 install -q jupyterlab
RUN    pip3 install https://download.pytorch.org/whl/cu100/torch-1.1.0-cp36-cp36m-linux_x86_64.whl
RUN    pip3 install https://download.pytorch.org/whl/cu100/torchvision-0.3.0-cp36-cp36m-linux_x86_64.whl