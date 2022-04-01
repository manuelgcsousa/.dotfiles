# PROMPT
function parse_git_branch() {
    branch=$(git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1 /p')
    [ $branch ] && echo "on %F{green}$branch%f"
}
setopt PROMPT_SUBST
PROMPT=$'\n%n in %F{8}%~%f $(parse_git_branch)\n$ '
export PROMPTBK=$PROMPT

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

# terraform completion
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# aliases
alias \
	ls="ls --color=auto" \
	..="cd ../" \
	cp="cp -iv" \
	rm="rm -i" \
	mv="mv -i" \
	mkdir="mkdir -p" \
	grep="grep --color=auto"

alias vim="nvim"
alias cat="bat --theme=\"Visual Studio Dark+\""
eval $(thefuck --alias)

# functions
function mktar() { tar cvzf "${1%%/}.tar.gz" "${1%%/}/"; }
function mkzip() { zip -r "${1%%/}.zip" "$1"; }

function set-tab-title() { kitty @ set-tab-title $1 }
