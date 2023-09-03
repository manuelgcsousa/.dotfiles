#!/usr/bin/bash

LGREEN='\033[1;32m'
RESET='\033[0m'

echo -e "${LGREEN}Installing utils...${RESET}"

sudo apt-get install -q \
  bat \
  fzf \
  jq \
  ripgrep \
  tmux \
  tree
