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

# Install z - jump to directories just by typing their name
mkdir -p ~/apps/z
git clone https://github.com/rupa/z.git ~/apps/z

# Install ripgrep
sudo apt install -y ripgrep

# Install fd
sudo apt install -y fd-find

# Install bat
sudo apt install bat

# Install antigen
mkdir -p ~/apps/antigen
curl -L git.io/antigen >~/apps/antigen/antigen.zsh

# Install commacd
mkdir -p ~/apps/commacd
git clone https://github.com/shyiko/commacd.git ~/apps/commacd

# Install neovim
mkdir -p ~/apps/neovim/0.11.1
wget -o ~/Downloads/neovim-0.11.1 https://github.com/neovim/neovim/releases/download/v0.11.1/nvim-linux-x86_64.tar.gz
cd ~/Downloads/
tar -xzf neovim-0.11.1
mv nvim-linux-x86_64 ~/apps/neovim/0.11.1/

# Install hstr
sudo apt install hstr -y

# Install xclip for copy/paste form tmux to system buffer
sudo apt install xclip
