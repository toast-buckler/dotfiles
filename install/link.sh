#!/usr/bin/env bash

set -eou pipefail

# Link zsh config
echo "Linking zsh config"
rm -f ~/.zshrc
ln -sf "$(pwd)"/zsh/zshrc ~/.zshrc

echo "Making .config folder"
mkdir -p ~/.config

# Link zellij config
echo "Linking zellij config"
rm -rf ~/.config/zellij
ln -sf "$(pwd)"/zellij ~/.config/zellij

# Link helix config
echo "Linking helix config"
rm -rf ~/.config/helix
ln -sf "$(pwd)"/helix ~/.config/helix

# Link neovim config
echo "Linking neovim config"
rm -rf ~/.config/nvim
mkdir -p ~/.config/nvim
ln -sf "$(pwd)"/neovim/init.lua ~/.config/nvim/init.lua

# Link gitignore
echo "Linking gitignore"
rm -f ~/.gitignore
ln -sf "$(pwd)"/git/gitignore ~/.gitignore

# Link alacritty config
echo "Linking alacritty config"
rm -f ~/.alacritty.toml
ln -sf "$(pwd)"/alacritty/alacritty.toml ~/.alacritty.toml

# Link tmux config
echo "Linking tmux config"
rm -f ~/.tmux.conf
ln -sf "$(pwd)"/tmux/tmux.conf ~/.tmux.conf
