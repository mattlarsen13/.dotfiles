#!/bin/bash

#check the operating system type is linux
if [[ $(uname) != *"Linux"* ]]; then
	echo "Error: This script is meant for Linux systems only" 2>> linuxsetup.log
	exit 
fi

#create the .TRASH directory if it doesn't exist
mkdir -p ~/.TRASH

#Check if the .vimrc file exists and rename it if it does
if [[ -f ~/".vimrc" ]]; then
	mv ~/".vimrc" ~/".bup vimrc"
	echo "The current .vimrc file was renmaed to .bup vimrc" >> linuxsetup.log
fi

#Overwrite the contents of etc/vimrc to .vimrc in the home directory 
cat ~/.dotfiles/etc/vimrc > ~/.vimrc

#Add the statement 'source ~/.dotfiles/etc/bashrc custom' to the end of the .bashrc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

