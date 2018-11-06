#!/bin/bash
#pkg update & install minimal pkg
sudo apt update -y && sudo apt upgrade -y 
sudo apt vim git ufw nginx 

#Fix "unable to resolve HOSTNAME"
sudo vim /etc/hostname
sudo sh -c 'echo 127.0.1.1 $(hostname) >> /etc/hosts'

#ufw setting
sudo ufw allow 80/tcp 
sudo ufw allow 443/tcp

#dotfiles assign
git config --global user.email "nesosuke@gmail.com"
git config --global user.nema "nesosuke"
mkdir ~/git 
git clone https://github.com/nesosuke/dotfiles_assign ~/git/dotfiles_assgin
cd ~/git/dotfiles_assign
bash dotfiles_assign.sh
cd -

#Download GRAV
git clone https://github.com/download/core/grav-admin/1.5.4 -o grav-admin-1.5.4.zip
echo "grav-admin.zip was downloaded! Unzip and install!"


#display rest steps
echo "Your rest work --> fix sshd_config: DISABLE PermitRootLogin  / CHANGE port 22 / REGISTER your pubkey" 

