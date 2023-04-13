FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN set -xe \
    && apt-get -y update \
    && apt-get -y install libjpeg-turbo8 python3 python3-dev python3-pip samtools

RUN pip3 install --upgrade pip

RUN pip3 install --upgrade --no-cache \
        numpy matplotlib ipython jupyter \
        pandas sympy nose numba scikit-learn \
        h5py click scipy pysam cython statsmodels

RUN pip3 install --upgrade --no-cache velocyto
