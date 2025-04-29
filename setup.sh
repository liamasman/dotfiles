#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "$BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Git config
git config --global init.defaultBranch main
git config --global user.name "Liam Asman"
git config --global user.email "Liam@LiamAsman.com"

# Install zsh
sudo apt install zsh -y

# Install curl
sudo apt install curl -y

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install starship
curl -sS https://starship.rs/install.sh | sh

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# Install tmux
sudo apt install tmux -y

# Install nvim
sudo apt install neovim -y

# zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


ln -s "${SCRIPT_DIR}/.tmux.conf" ~/tmux.conf
ln -s "${SCRIPT_DIR}/.zshrc" ~/.zshrc
mkdir -p ~/.config
ln -sf "${SCRIPT_DIR}/nvm/init.vim" ~/.config/nvim/init.vim
ln -sf "${SCRIPT_DIR}/starship.toml" ~/.config/starship.toml
