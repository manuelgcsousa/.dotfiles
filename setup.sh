#!/bin/bash

PKGS=(
    "homebrew"
    "bat"
    "font-jetbrains-mono-nerd-font"
    "jq"
    "kitty"
    "node"
    "nvim"
    "packer.nvim"
    "rectangle"
    "vscode"
)

# link with GNU stow.
stow -v kitty nvim zsh

# manually link vscode settings (macOS).
[[ $(uname -s) == 'Darwin' ]] && \
    ln -vf vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
