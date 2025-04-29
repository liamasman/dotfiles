#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "$BASH_SOURCE[0]}" )" &> /dev/null && pwd )

git config --global init.defaultBranch main
git config --global user.name "Liam Asman"
git config --global user.email "Liam@LiamAsman.com"
sudo apt install zsh -y
sudo apt install curl -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s "${SCRIPT_DIR}.zshrc" ~/.zshrc
mv ~/.config "${SCRIPT_DIR}"/.config
mkdir -p .config
touch .config/starship.toml
