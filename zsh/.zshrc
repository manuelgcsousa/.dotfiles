# ------------------------------------------- #
# .zshrc 
# ------------------------------------------- #

# 256 colors
export TERM="xterm-256color"

# language
export LANG=pt_PT.UTF-8

# prompts
export PS1=$'\n%F{8}[%~]%f $ '
export PS1BK=$PS1

# ls colors (macOS)
export CLICOLOR=1
export LSCOLORS=GxBxfxdxCxegedabagaced

# paths 
export PATH="$PATH:$HOME/.scripts"
# ...


# autocomplete
autoload -U compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# basic aliases
alias \
	ls="ls --color=auto" \
	..="cd ../" \
	cp="cp -iv" \
	rm="rm -i" \
	mv="mv -i" \
	mkdir="mkdir -p" \
	grep="grep --color=auto" \
	vim="nvim"	

function mktar() { tar cvzf "${1%%/}.tar.gz" "${1%%/}/"; }
function mkzip() { zip -r "${1%%/}.zip" "$1"; }

# custom aliases
# ...
