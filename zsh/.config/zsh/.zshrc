# PROMPT
function parse_git_branch() {
    branch=$(git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1/p')
    [ $branch ] && echo " :: %F{green}$branch%f"
}
setopt PROMPT_SUBST
PROMPT=$'\n[%F{8}%~%f$(parse_git_branch)]\n$ '
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

# shell utils
setopt ignoreeof

# ls colors
if [[ $(uname -s) == "Linux" ]]; then
    export LS_COLORS="di=1;36:ln=1;31:so=35:pi=33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=34;43"
else
    export CLICOLOR=1
    export LSCOLORS=ExBxfxdxCxegedabagaced
fi

# terraform completion
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# sane defaults
alias \
    ..="cd ../" \
    ls="ls -v --color" \
    cp="cp -iv" \
    rm="rm -i" \
    mv="mv -i" \
    mkdir="mkdir -p" \
    grep="grep --color=auto"

# aliases
alias vim="$HOME/.local/bin/nvim/bin/nvim"
alias cat="bat --theme 'Visual Studio Dark+'"
alias tf="terraform"
eval $(thefuck --alias)

# functions
source "$HOME/.config/zsh/.functions"
