#!/usr/bin/env bash

# Create SSH Key
ssh-keygen -t ed25519 -C "Liam@LiamAsman.com"
ssh-add ~/.ssh/id_ed25519
echo "SSH Key"
cat ~/.ssh/id_ed25519.pub

# Git config
git config --global init.defaultBranch main
git config --global user.name "Liam Asman"
git config --global user.email "Liam@LiamAsman.com"
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_ed25519.pub

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
