FROM pytorch/pytorch:2.1.0-cuda12.1-cudnn8-devel

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get -y upgrade --only-upgrade systemd openssl cryptsetup \
    && apt-get install -y \
    bzip2 \
    curl \
    git \
    git-lfs \
    tar \
    vim \
    && apt-get clean autoremove --yes \
    && rm -rf /var/lib/{apt,dpkg,cache,log}
