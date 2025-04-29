ln -s "${SCRIPT_DIR}/.tmux.conf" ~/tmux.conf
ln -s "${SCRIPT_DIR}/.zshrc" ~/.zshrc
mkdir -p ~/.config
ln -sf "${SCRIPT_DIR}/nvm/init.vim" ~/.config/nvim/init.vim
ln -sf "${SCRIPT_DIR}/starship.toml" ~/.config/starship.toml
