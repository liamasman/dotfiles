#!/usr/bin/env bash

SCRIPT_DIR=$(cd -- "$(dirname -- "$BASH_SOURCE[0]}")" &>/dev/null && pwd)

ln -sf "${SCRIPT_DIR}/.bashrc" ${HOME}/.bashrc
ln -sf "${SCRIPT_DIR}/.tmux.conf" ${HOME}/.tmux.conf
ln -sf "${SCRIPT_DIR}/.zshrc" ${HOME}/.zshrc
ln -sf "${SCRIPT_DIR}/.aliases" ${HOME}/.aliases
mkdir -p ${HOME}/.config
ln -sf "${SCRIPT_DIR}/.config/nvim" ${HOME}/.config/nvim
ln -sf "${SCRIPT_DIR}/.config/starship.toml" ${HOME}/.config/starship.toml
ln -sf "${SCRIPT_DIR}/.tip_of_the_day.sh" ${HOME}/.tip_of_the_day.sh
ln -sf "${SCRIPT_DIR}/.tmux-cheatsheet.sh" ${HOME}/.tmux-cheatsheet.sh
