#!/bin/bash

PKGS=(
    "homebrew"
    "font-jetbrains-mono-nerd-font"
    "rectangle"
    "kitty"
    "nvim"
    "packer.nvim"
    "node"
    "bat"
    "jq"
)

# link with GNU stow.
stow -v kitty zsh nvim 
