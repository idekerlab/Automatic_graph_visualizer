# base:ubuntu(18.04)
FROM  ubuntu:latest
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

####    from https://hub.docker.com/r/rocker/r-base/dockerfile

## Use Debian unstable via pinning -- new style via APT::Default-Release
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list \
        && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default

ENV R_BASE_VERSION 3.6.1

## Now install R and littler, and create a link for littler in /usr/local/bin
RUN apt install -t unstable -y --no-install-recommends \
		littler \
        r-cran-littler \
		r-base=${R_BASE_VERSION}-* \
		r-base-dev=${R_BASE_VERSION}-* \
		r-recommended=${R_BASE_VERSION}-* \
	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r \
	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r \
	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r \
	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r \
	&& install.r docopt \
	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
	&& rm -rf /var/lib/apt/lists/*




# prepare for install R
#RUN    echo -e "\n## For R package"  | tee -a /etc/apt/sources.list
#RUN    echo "deb https://cran.rstudio.com/bin/linux/ubuntu $(lsb_release -cs)-cran35/" | tee -a /etc/apt/sources.list
#RUN    gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
#RUN    gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | apt-key add -
#RUN    apt install r-base
