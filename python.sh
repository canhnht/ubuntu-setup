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
sudo pip3 install -U virtualenv
which virtualenv
sudo pip3 install -U virtualenvwrapper
sudo pip3 install -U jupyter jupyterlab jupyter_http_over_ws

echo "#Virtualenvwrapper settings:" >> ~/.bash_profile
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.bash_profile
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bash_profile
echo "export VIRTUALENVWRAPPER_VIRTUALENV=~/.local/bin/virtualenv" >> ~/.bash_profile
echo "source ~/.local/bin/virtualenvwrapper.sh" >> ~/.bash_profile
# source /usr/local/bin/virtualenvwrapper.sh

# Install TensorFlow on Jetson Platform
# Reference: https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html
sudo apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev
sudo pip3 install -U pip
sudo pip3 install -U numpy grpcio absl-py py-cpuinfo psutil portpicker six mock requests gast h5py astor termcolor protobuf keras-applications keras-preprocessing wrapt google-pasta
3
sudo pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu


echo -e "\\033[0;32m[OK]\\033[0m"