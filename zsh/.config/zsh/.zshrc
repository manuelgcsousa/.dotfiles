# PROMPT
function parse_git_branch() {
    branch=$(git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1/p')
    [ $branch ] && echo " :: %F{green}$branch%f"
}
setopt PROMPT_SUBST
PROMPT=$'\n[%n %F{8}%~%f$(parse_git_branch)]\n$ '
export PROMPTBK=$PROMPT

# history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$HOME/.cache/zsh/history"
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

# sane defaults
alias \
    ls="ls -v --color" \
    cp="cp -iv" \
    rm="rm -i" \
    mv="mv -i" \
    mkdir="mkdir -p" \
    grep="grep --color=auto"

# aliases
alias ..="cd ../"
alias vim="$HOME/.local/bin/nvim/bin/nvim"

# functions
function mktar() { tar cvzf "${1%%/}.tar.gz" "${1%%/}/"; }
function untar() { tar xvzf "$1"; }
function mkzip() { zip -r "${1%%/}.zip" "$1"; }


# -----


# terraform completion
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
