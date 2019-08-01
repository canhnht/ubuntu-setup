#!/usr/bin/env bash

#Exit on error
set -e

sudo -v

echo -n "Installing TensorFlow ..."

# Install TensorFlow on Jetson Platform
# Reference: https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html
sudo apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev
sudo pip3 install -U pip
sudo pip3 install -U numpy grpcio absl-py py-cpuinfo psutil portpicker six mock requests gast h5py astor termcolor protobuf keras-applications keras-preprocessing wrapt google-pasta
3
sudo pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu

echo -e "\\033[0;32m[OK]\\033[0m"
