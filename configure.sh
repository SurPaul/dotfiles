#!/bin/bash

if [[ $(whoami) == root ]]; then
  echo "You need to log in as a user."
  exit 1
fi

sudo dpkg-reconfigure tzdata

echo "en_US.UTF-8 UTF-8\nru_RU.UTF-8 UTF-8" > locale.gen
sudo mv locale.gen /etc
sudo locale-gen
sudo localectl set-locale LANG=en_US.UTF-8

sudo apt update
sudo apt upgrade -y
sudo apt install -y neofetch tmux nvim zsh bat git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd $HOME/.oh-my-zsh/custom/plugins/
git clone https://github.com/catppuccin/zsh-syntax-highlighting.git catppuccin-zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-completions.git

sudo chsh -s /bin/zsh $(whoami)

cd
git clone https://github.com/SurPaul/Linux.conf.git
mkdir -p ~/.config/neofetch
cp ./Linux.conf/neofetch.conf ~/.config/neofetch/config.conf
cp ./Linux.conf/zshrc ~/.zshrc
rm -rf Linux.conf

zsh
