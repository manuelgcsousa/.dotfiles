# ------------------------------------------- #
# .zshrc 
# ------------------------------------------- #

# 256 colors
export TERM="xterm-256color"

# language
export LANG=pt_PT.UTF-8

# prompts
export PROMPT=$'\n%F{8}[%~]%f $ '

# add git branch to prompt
function parse_git_branch() {
    branch=$(git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1 /p')
    [ $branch ] && echo "on %F{green}$branch%f"
}
setopt PROMPT_SUBST
export PROMPT=$'\n%n in %F{8}%~%f $(parse_git_branch)\n$ '
export PROMPTBK=$PROMPT

# ls colors (macOS)
export CLICOLOR=1
export LSCOLORS=GxBxfxdxCxegedabagaced

# paths 
export PATH="$PATH:$HOME/.scripts"
# ...

# history
bindkey -v
bindkey "^R" history-incremental-search-backward

# vi mode
bindkey -v
export KEYTIMEOUT=1
bindkey "^?" backward-delete-char

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
