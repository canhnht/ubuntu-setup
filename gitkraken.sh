#!/usr/bin/env bash

set -e

sudo -v

# Install dependency for gitkraken
echo -e "\\033[1;92m**Installing dependencies for Gitkraken**\\033[1;92m\\033[0m"
sudo apt install libgnome-keyring-dev libcurl3

# Changes the text color to Light-Green.
echo -e "\\033[1;38;5;23m"

cat << "EOF"
 ___           _        _ _ _                ____ _ _   _              _              
|_ _|_ __  ___| |_ __ _| | (_)_ __   __ _   / ___(_) |_| | ___ __ __ _| | _____ _ __  
 | || '_ \/ __| __/ _` | | | | '_ \ / _` | | |  _| | __| |/ / '__/ _` | |/ / _ \ '_ \ 
 | || | | \__ \ || (_| | | | | | | | (_| | | |_| | | |_|   <| | | (_| |   <  __/ | | |
|___|_| |_|___/\__\__,_|_|_|_|_| |_|\__, |  \____|_|\__|_|\_\_|  \__,_|_|\_\___|_| |_|
                                    |___/                                             
EOF

# Changes the text color to default
echo -e "\\033[1;92m\\033[0m"

# Downloads gitkraken .deb package for ubuntu
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb 

# Installs gitkraken
dpkg -i gitkraken-amd64.deb

# Removes gitkraken .deb package from machine
rm -f gitkraken-amd64.deb

# Verify and exit installation
echo -n "Verifying Gitkraken installation... "
echo
GITKRAKEN_CHECK="$(gitkraken -v 1>&1)"
if [[ "$GITKRAKEN_CHECK" == *"XNode started time"* ]]; then
   echo -e "\\033[0;32mOK"
   echo
   echo "Gitkraken is successfully installed!"
   echo
   atom -v
   echo -e "\\033[0m"
   exit 0
else
   echo -e "\\033[0;31mFAILED"
   echo
   echo "$0: Lol! Something went wrong, try to fix yourself else report an issues"
   echo -e "\\033[0m"
   exit 1
fi