#!/bin/bash -ex

# Make windows have sidebars you have a chance of grabbing
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 2
# Optional: Make scrollbars persistent
gsettings set com.canonical.desktop.interface scrollbar-mode normal

#install JDK for Powerpack build
sudo apt-add-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y openjdk-8-jdk

# Some fun tools I like
sudo apt-get install -y htop
sudo apt-get install -y iftop
sudo apt-get install -y picocom
sudo apt-get install -y ckermit
sudo apt-get install -y minicom
sudo apt-get install -y gparted

# Setup ccache:
export USE_CCACHE=1

# Ensure user is in plugdev group
WHOAMI=`whoami`
GROUPCHECK=plugdev
GROUPLIST=`id $WHOAMI`

if [[ $GROUPLIST == *$GROUPCHECK* ]] ; then
	echo "You are in $GROUPCHECK"
else 
	echo "You are not in $GROUPCHECK, so adding..."
	sudo adduser $WHOAMI $GROUPCHECK 
fi


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

