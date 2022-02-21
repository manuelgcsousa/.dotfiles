# ------------------------------------------- #
# .zshrc 
# ------------------------------------------- #

# 256 colors
export TERM="xterm-256color"

# language
export LANG=pt_PT.UTF-8

# prompts
export PROMPT=$'\n%F{8}[%~]%f $ '
export PROMPTBK=$PROMPT

# add git branch to prompt
function parse_git_branch() { git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/(\1) /p' }
setopt PROMPT_SUBST
export PROMPT=$'\n%F{8}[%~]%f %F{green}$(parse_git_branch)%f$ '

# ls colors (macOS)
export CLICOLOR=1
export LSCOLORS=GxBxfxdxCxegedabagaced

# paths 
export PATH="$PATH:$HOME/.scripts"
# ...

# vi mode
bindkey -v
export KEYTIMEOUT=1

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
