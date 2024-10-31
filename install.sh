#!/bin/bash

# Create all necessary directories first
mkdir -p ~/.config/bat
mkdir -p ~/.config/sheldon

# Then create all symlinks
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles/zsh/.zshenv ~/.zshenv
ln -sf ~/dotfiles/zsh/plugins.toml ~/.config/sheldon/plugins.toml
ln -sf ~/dotfiles/.config/bat/config ~/.config/bat/config
