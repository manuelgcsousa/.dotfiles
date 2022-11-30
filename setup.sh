#!/bin/bash

# setup .zshenv
echo ". ~/.config/zsh/.zshenv" > ~/.zshenv

# link with GNU stow
# stow -v \
#     alacritty \
#     bspwm \
#     dunst \
#     i3 \
#     kitty \
#     nvim \
#     qtile \
#     rofi \
#     tmux \
#     zsh
# 
# # manually link vscode settings
# [[ $(uname -s) == "Linux" ]] && \
#     ln -vf vscode/settings.json $HOME/.config/Code/User/settings.json || \
#     ln -vf vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json

stow -v qtile
