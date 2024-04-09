#!/bin/bash

# Проверьте запущен скрипт от имени Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please run sudo ./install.sh" 2>&1
  exit 1
fi

username=$(id -u -n 1000)
builddir=$(pwd)

# Обновление пакетов и системы
apt update -y
apt upgrade -y

# Установка nala
apt install nala -y

# Установка программ
#nala install feh kitty rofi picom thunar nitrogen lxpolkit x11-xserver-utils unzip wget pipewire wireplumber pavucontrol build-essential libx11-dev libxft-dev libxinerama-dev libx11-xcb-dev libxcb-res0-dev zoxide -y

# Installing Other less important Programs
#nala install neofetch flameshot psmisc mangohud vim lxappearance papirus-icon-theme lxappearance fonts-noto-color-emoji lightdm -y

# Установить браузер
curl -fSsL https://repo.yandex.ru/yandex-browser/YANDEX-BROWSER-KEY.GPG | sudo gpg --dearmor | sudo tee /usr/share/keyrings/yandex.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/yandex.gpg] http://repo.yandex.ru/yandex-browser/deb stable main | sudo tee /etc/apt/sources.list.d/yandex-stable.list
nala update
nala install yandex-browser-stable


# Use nala
#bash scripts/usenala
