#!/usr/bin/env bash

#Exit on error
set -e

sudo -v

echo -n "Installing Python Stuffs ..."

sudo apt-get install -y \
  python3-pip \
  python3-pil \
  python3-matplotlib >/dev/null

pip3 --version
pip3 install -U virtualenv
pip3 install -U virtualenvwrapper
pip3 install -U jupyter jupyterlab jupyter_http_over_ws

echo "#Virtualenvwrapper settings:" >> ~/.bashrc
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.bashrc
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc
echo "export VIRTUALENVWRAPPER_VIRTUALENV=~/.local/bin/virtualenv" >> ~/.bashrc
echo "source ~/.local/bin/virtualenvwrapper.sh" >> ~/.bashrc

# Install TensorFlow on Jetson Platform
# Reference: https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html
#sudo apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev
#sudo pip3 install -U pip
#sudo pip3 install -U numpy grpcio absl-py py-cpuinfo psutil portpicker six mock requests gast h5py astor termcolor protobuf keras-applications keras-preprocessing wrapt google-pasta
#3
#sudo pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu

echo -e "\\033[0;32m[OK]\\033[0m"
