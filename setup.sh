#!/bin/bash

PKGS=(
    "homebrew"
    "bat"
    "font-jetbrains-mono-nerd-font"
    "github.com/k0nserv/kitty-icon"
    "jq"
    "kitty"
    "node"
    "nvim"
    "packer.nvim"
    "rectangle"
    "spaceman"
    "stow"
    "vscode"
)

# setup .zshenv
echo ". ~/.config/zsh/.zshenv" > ~/.zshenv

# link with GNU stow.
stow -v kitty nvim zsh

# manually link vscode settings.
[[ $(uname -s) == "Linux" ]] && \
    ln -vf vscode/settings.json $HOME/.config/Code/User/settings.json || \
    ln -vf vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
