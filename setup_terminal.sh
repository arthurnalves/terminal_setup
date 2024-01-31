#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

# install fish
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt update
sudo apt install fish
chsh -s $(which fish)

# install starship (interactive)
curl -sS https://starship.rs/install.sh | sh
starship init fish | source
echo "starship init fish | source" >> ~/.config/fish/config.fish

# fuzzy search (ctrl+R) (interactive)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
