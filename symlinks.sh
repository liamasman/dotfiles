#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "$BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ln -sf "${SCRIPT_DIR}/.tmux.conf" ~/tmux.conf
ln -sf "${SCRIPT_DIR}/.zshrc" ~/.zshrc
mkdir -p ~/.config
ln -sf "${SCRIPT_DIR}/nvm" ~/.config/nvim
ln -sf "${SCRIPT_DIR}/starship.toml" ~/.config/starship.toml
