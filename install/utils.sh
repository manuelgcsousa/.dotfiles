#!/usr/bin/bash

LGREEN='\033[1;32m'
RESET='\033[0m'

echo -e "${LGREEN}Installing utils...${RESET}"

sudo apt-get install -q \
  bat \
  jq \
  ripgrep \
  tmux \
  tree

# FZF
if [ ! -d "$HOME/Sources/fzf" ]; then
  mkdir -p "$HOME/Sources"
  git clone --depth 1 "https://github.com/junegunn/fzf.git" "$HOME/Sources/fzf"
fi

cd "$HOME/Sources/fzf" \
  && ./install \
  && mv "./bin/fzf" "$HOME/.local/bin"
