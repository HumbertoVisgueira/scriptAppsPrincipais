#!/usr/bin/bash
echo +----------------------+
echo  instalando programas
echo +----------------------+

sudo apt update -y && sudo apt upgrade -y

##Baixando e instalando chrome
mkdir /home/User/Downloads/Apps\ Padrões\ Humberto
cd /home/User/Downloads/Apps\ Padrões\ Humberto

sudo apt install git -y
sudo apt install gparted -y

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -c https://github.com/shiftkey/desktop/releases/download/release-3.2.1-linux1/GitHubDesktop-linux-3.2.1-linux1.deb

sudo dpkg -i *.deb

clear

cd ~

##Colocando gerenciador de pacotes snap
sudo rm /var/lib/dpkg/lock-frontend ;
sudo rm /var/cache/apt/archives/lock ;
sudo apt update -y && sudo apt upgrade -y
sudo apt install snapd -y

##Pacotes Snap 
sudo snap install discord --edge
sudo snap install steam --edge
sudo snap install code --classic
sudo snap install spotify --edge
sudo snap install vlc --edge

clear 

sudo apt update -y && sudo apt upgrade -y

reboot
