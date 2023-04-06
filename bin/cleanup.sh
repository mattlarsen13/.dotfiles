#!/bin/bash

#Remove the .vimrc file in the home directory
rm -f ~/.vimrc

#Remove the line 'source ~/.dotfiles/etc/bashrc_custom in the .bashrc file
sed -i 's/source \~\/\.dotfiles\/etc\/bashrc\_custom//g' ~/.bashrc

#Remove the .TRASH directory in the home directory
rm -f -r ~/.TRASH

