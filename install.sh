#!/bin/bash

# Установка nala
sudo apt install nala -y

# Обновление пакетов и системы
sudo nala update -y
sudo nala upgrade -y

# Установка программ
nala install curl apt-transport-https -y

# Установить браузер
curl -fSsL https://repo.yandex.ru/yandex-browser/YANDEX-BROWSER-KEY.GPG | sudo gpg --dearmor | sudo tee /usr/share/keyrings/yandex.gpg > /dev/null
echo deb [arch=amd64 signed-by=/usr/share/keyrings/yandex.gpg] http://repo.yandex.ru/yandex-browser/deb stable main | sudo tee /etc/apt/sources.list.d/yandex-stable.list
sudo nala update -y
sudo nala install yandex-browser-stable -y


# Use nala
bash scripts/usenala

########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 

source ~/debian-installers/nerdfonts.sh


sudo nula autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
