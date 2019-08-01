#!/usr/bin/env bash

#Exit on error
set -e

sudo -v

echo -n "Installing Essential Stuffs ..."

# Update the package list
sudo apt-get update >/dev/null

# Install Dependency
# sudo apt-get install -y \
#   apt-transport-https \
#   ca-certificates \
#   curl \
#   git \
#   gnupg \
#   build-essential \
#   wget \
#   libssl-dev \
#   software-properties-common >/dev/null

git config --global user.name "ACworks-AI-Lab"
git config --global user.email "ai-lab@acworks.co.jp"

echo -e "\\033[0;32m[OK]\\033[0m"
