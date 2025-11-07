#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "$BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ln -s -f "${SCRIPT_DIR}/.bashrc" ${HOME}/.bashrc
ln -s -f "${SCRIPT_DIR}/.tmux.conf" ${HOME}/.tmux.conf
ln -s -f "${SCRIPT_DIR}/.zshrc" ${HOME}/.zshrc
ln -s -f "${SCRIPT_DIR}/.aliases" ${HOME}/.aliases
mkdir -p ${HOME}/.config
ln -s -f "${SCRIPT_DIR}/.config/nvim" ${HOME}/.config/nvim
ln -s -f "${SCRIPT_DIR}/.config/starship.toml" ${HOME}/.config/starship.toml
ln -s -f "${SCRIPT_DIR}/.tip_of_the_day.sh" ${HOME}/.tip_of_the_day.sh
