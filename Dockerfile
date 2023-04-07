FROM pytorch/pytorch:1.13.0-cuda11.6-cudnn8-runtime

# Prevent stop building ubuntu at time zone selection.  
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y sudo git vim libgl1-mesa-glx libglib2.0-0 && \
    git clone https://github.com/changh95/nerf-pytorch-docker.git && \
    cd nerf-pytorch-docker &&\
    pip3 install -r requirements.txt
