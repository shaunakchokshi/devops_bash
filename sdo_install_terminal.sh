#!/bin/bash -ex

# Optional: Make scrollbars persistent
gsettings set com.canonical.desktop.interface scrollbar-mode normal

# Some fun tools I like
sudo apt-get install -y htop
sudo apt-get install -y minicom
sudo apt-get install -y gparted

# Optional: Add another/better default terminal 
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator
# If needed, you can run sudo update-alternatives --config x-terminal-emulator and select it, but it should be set

# Optional: Do you want to install bash_it as a terminal upgrade?
cd ~
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

echo "You need to set your config options in .bashrc just yet!"

