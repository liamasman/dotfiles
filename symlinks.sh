#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "$BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ln -sf "${SCRIPT_DIR}/.bashrc" ~/.bashrc
ln -sf "${SCRIPT_DIR}/.tmux.conf" ~/.tmux.conf
ln -sf "${SCRIPT_DIR}/.zshrc" ~/.zshrc
ln -sf "${SCRIPT_DIR}/.aliases" ~/.aliases
mkdir -p ~/.config
ln -sf "${SCRIPT_DIR}/.config/nvm" ~/.config/nvim
ln -sf "${SCRIPT_DIR}/.config/starship.toml" ~/.config/starship.toml
