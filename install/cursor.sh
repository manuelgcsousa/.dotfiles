#!/usr/bin/bash

LGREEN='\033[1;32m'
RESET='\033[0m'

echo -e "${LGREEN}Installing cursor...${RESET}"

release=$(curl --silent "https://api.github.com/repos/ful1e5/Bibata_Cursor/releases/latest" | awk -F'"' '/tag_name/ {print $4}')
curl -LJO "https://github.com/ful1e5/Bibata_Cursor/releases/download/$release/Bibata.tar.gz"

sudo tar -xf "Bibata.tar.gz" -C "/usr/share/icons" && rm "Bibata.tar.gz"
