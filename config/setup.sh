#!/usr/bin/bash

configs=(
  alacritty
  i3
  nvim
  tmux
  zsh
)

for config in "${configs[@]}"; do
  ln -fsv "$HOME/.dotfiles/config/$config" "$HOME/.config/"
done

if [ "$(uname -s)" = "Linux" ]; then
  ln -fsv "$HOME/.dotfiles/config/vscode/settings.json" "$HOME/.config/Code/User/settings.json"
else
  ln -fsv "$HOME/.dotfiles/config/vscode/settings.json" "$HOME/Library/Application\ Support/Code/User/settings.json"
fi

echo ". $HOME/.config/zsh/.zshenv" > "$HOME/.zshenv"
