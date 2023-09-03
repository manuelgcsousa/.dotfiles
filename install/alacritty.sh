#!/usr/bin/bash

LGREEN='\033[1;32m'
RESET='\033[0m'

echo -e "${LGREEN}Installing alacritty...${RESET}"

# dependencies
sudo apt-get install -qq \
  cmake \
  pkg-config \
  libfreetype6-dev \
  libfontconfig1-dev \
  libxcb-xfixes0-dev \
  libxkbcommon-dev \
  python3 \
  cargo

# install using cargo
cargo install alacritty
