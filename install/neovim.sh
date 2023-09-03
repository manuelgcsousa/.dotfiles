#!/usr/bin/bash

LGREEN='\033[1;32m'
RESET='\033[0m'

echo -e "${LGREEN}Installing neovim...${RESET}"

# dependencies
sudo apt-get install -qq \
  git \
  ninja-build \
  gettext \
  cmake \
  unzip \
  curl

if [ ! -d "$HOME/Sources/neovim" ]; then
  mkdir -p "$HOME/Sources" && \
    git clone "https://github.com/neovim/neovim" "$HOME/Sources/neovim"
fi

cd "$HOME/Sources/neovim" \
  && git checkout -f stable \
  && make -s --no-print-directory CMAKE_BUILD_TYPE=RelWithDebInfo \
  && sudo make install -s \
  && cd "$_currentDir"
