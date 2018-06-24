#!/bin/bash -ex

#Install sublime
echo "Installing Sublime text editor . . ."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# Install Pip
sudo apt-get install python-pip
sudo apt-get update && sudo apt-get -y upgrade

#Install python packages
echo "Installing python packages . . ."
pip install opencv-python numpy scipy

