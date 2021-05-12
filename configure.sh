#!/bin/bash
# TODO: Добавить проверку на суперпользователя.

sudo dpkg-reconfigure tzdata

cp ./neofetch.conf ~/.config/neofetch/config.conf
cp ./zshrc ~/.zshrc

sudo apt update
sudo apt upgrade -y
sudo apt install -y neofetch ripgrep tmux vim wget zsh zplug

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sudo chsh -s /bin/zsh $(whoami)
