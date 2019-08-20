# base:ubuntu(18.04)
FROM  ubuntu:18.04
LABEL maintainer="agis"

RUN    apt update  -qy
RUN    apt upgrade -qy

RUN    apt install wget -qy
RUN    apt install tar -qy
RUN    apt install curl -qy
RUN    apt install lsb-release -qy


RUN    apt install python3-pip -qy
RUN    apt install build-essential python-dev libxml2 libxml2-dev zlib1g-dev -qy

RUN    apt install -qy vim 
RUN    apt install -qy git
RUN    pip3 install -q pandas
RUN    pip3 install -q keras
RUN    pip3 install -q scikit-learn
RUN    pip3 install -q jupyterlab
RUN    pip3 install -q matplotlib
RUN    pip3 install -q seaborn
RUN    pip3 install -q py2cytoscape
RUN    pip3 install -q ndex2


# prepare for install R
#RUN    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
#RUN    add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
#RUN    apt install r-base