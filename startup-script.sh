#!/bin/bash
#pkg update & install minimal pkg
sudo apt update -y && sudo apt upgrade -y 
sudo apt install -y vim git ufw nginx 

#Fix "unable to resolve HOSTNAME"
sudo vim /etc/hostname
sudo sh -c 'echo 127.0.1.1 $(hostname) >> /etc/hosts'

#ufw setting
sudo ufw enable
sudo ufw allow 80/tcp 
sudo ufw allow 443/tcp

#dotfiles assign
git config --global user.email "nesosuke@gmail.com"
git config --global user.name "nesosuke"
mkdir ~/git 
git clone https://github.com/nesosuke/dotfiles ~/git/dotfiles
~/git/dotfiles_assign/dotfiles_assign.sh


#Download GRAV
#wget https://github.com/download/skeltons/blog-site/2.0.0 -o grav-skeltons-blog-site-2.0.0.zip
#echo ""
#echo "grav-skeltons-blog-site-2.0.0.zip was downloaded! Unzip and install!"


#display other steps
echo ""
echo "Your rest work --> fix sshd_config: DISABLE PermitRootLogin  / CHANGE port 22 / REGISTER your pubkey" 

