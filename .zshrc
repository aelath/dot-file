# use oh my zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cypher"

set -a
PROMPT='%T %? %m%# '
WORDCHARS="*?[]~=&;!#$%^(){}<>"
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zhistory

plugins=(git battery github node colorize sudo virtualenv brew docker lein npm)
source $ZSH/oh-my-zsh.sh

# Aliases
alias ll='ls -l'
alias s='git status'
alias b='git branch -av'
alias irc="TERM=screen-256color irssi"

setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY
[ "$TERM" = dumb ] && unsetopt zle

export EDITOR='emacs'

export NODE_NO_READLINE=1

# mactex
# eval `/usr/libexec/path_helper -s`
