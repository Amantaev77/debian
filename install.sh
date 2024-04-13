#!/bin/bash

sudo apt install xorg xinit bspwm sxhkd polybar suckless-tools alacritty geany pcmanfm feh hsetroot compton brightnessctl system-config-printer network-manager-gnome xfce4-power-manager linux-headers-$(uname -r) build-essential net-tools nmap htop cups firefox-esr remmina fonts-clear-sans fonts-jetbrains-mono fonts-liberation2 zip unzip

########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 

source ~/debian-installers/nerdfonts.sh


sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
