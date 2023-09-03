#!/usr/bin/bash

LGREEN='\033[1;32m'
RESET='\033[0m'

echo -e "${LGREEN}Installing i3 and resources...${RESET}"

sudo apt-get install -q \
  i3 \
  i3blocks \
  dunst \
  rofi
