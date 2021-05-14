#!/bin/bash
# TODO: Добавить проверку на суперпользователя.

sudo dpkg-reconfigure tzdata

sudo apt update
sudo apt upgrade -y
sudo apt install -y neofetch tmux vim zplug

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sudo chsh -s /bin/zsh $(whoami)

git clone https://github.com/SurPaul/Linux.conf.git
cp ./Linux.conf/neofetch.conf ~/.config/neofetch/config.conf
cp ./Linux.conf/zshrc ~/.zshrc
rm -rf Linux.conf

zsh
