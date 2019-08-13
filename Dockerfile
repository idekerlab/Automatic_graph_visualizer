FROM  ubuntu:latest
LABEL maintainer="agis"

RUN    apt update  -qy
RUN    apt upgrade -qy
RUN    apt install -qy python3-pip

RUN    apt install -qy vim 
RUN    apt install -qy git
RUN    pip3 install -q pandas
RUN    pip3 install -q keras
RUN    pip3 install -q scikit-learn
RUN    pip3 install -q jupyterlab
