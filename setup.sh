#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "$BASH_SOURCE[0]}" )" &> /dev/null && pwd )

git config --global init.defaultBranch main
git config --global user.name "Liam Asman"
git config --global user.email "Liam@LiamAsman.com"
sudo apt install zsh -y
sudo apt install curl -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
touch .config/starship.toml
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
sudo apt install tmux -y
sudo apt install neovim -y


ln -s "${SCRIPT_DIR}/.tmux.conf" ~/tmux.conf
ln -s "${SCRIPT_DIR}.zshrc" ~/.zshrc
mkdir -p ~/.config
ln -sf "${SCRIPT_DIR}/nvm/init.vim" ~/.config/nvim/init.vim
ln -sf "${SCRIPT_DIR}/starship.toml" ~/.config/starship.toml
