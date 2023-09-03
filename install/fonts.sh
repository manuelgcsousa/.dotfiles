#!/usr/bin/bash

LGREEN='\033[1;32m'
RESET='\033[0m'

fontsDir="$HOME/.local/share/fonts"

echo -e "${LGREEN}Installing fonts...${RESET}"

mkdir -p $fontsDir

echo "[Iosevka Nerd Font]"
release=$(curl --silent "https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest" | awk -F'"' '/tag_name/ {print $4}')
curl -LJO "https://github.com/ryanoasis/nerd-fonts/releases/download/$release/Iosevka.zip"
unzip -qqo "Iosevka.zip" -d "$fontsDir/Iosevka" && rm "Iosevka.zip"

echo "[Fira Sans]"
curl -LJO "https://fonts.google.com/download?family=Fira%20Sans"
unzip -qqo "Fira_Sans.zip" -d "$fontsDir/FiraSans" && rm "Fira_Sans.zip"

echo "Reloading font cache..."
fc-cache -f 2>&1
