# ZDOTDIR
export ZDOTDIR=~/.config/zsh

# defaults
export TERMINAL="kitty"
export EDITOR="nvim"
export WMDIR="$HOME/.config/bspwm"

# 256 colors
export TERM="xterm-256color"

# language
export LANG=pt_PT.UTF-8

# ls colors
if [[ $(uname -s) == "Linux" ]]; then
    export LS_COLORS="di=1;34:ln=1;31:so=35:pi=33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=34;43"
else
    export CLICOLOR=1
    export LSCOLORS=ExBxfxdxCxegedabagaced
fi

# PATH ...
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.config/bspwm/scripts"
export PATH="$PATH:$HOME/.scripts"
export PATH="$PATH:/opt/confd/bin"

# ... nix
export XDG_DATA_DIRS="$XDG_DATA_DIRS:$HOME/.nix-profile/share"
