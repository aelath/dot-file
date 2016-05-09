# use oh my zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME=lambda

set -a
PROMPT='%T %? %m%# '
WORDCHARS="*?[]~=&;!#$%^(){}<>"
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zhistory

plugins=(git battery github node colorize sudo virtualenv brew docker docker-compose lein npm vagrant)
source $ZSH/oh-my-zsh.sh

# Aliases
alias ll='ls -l'
alias s='git status'
alias b='git branch -av'
alias gg='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias grunt='grunt --no-color'
alias irc="TERM=screen-256color irssi"
alias nolimit="sudo sh -c 'ulimit -n 3072 && exec su $LOGNAME'"
alias fv="fortune | tr '[:upper:]' '[:lower:]' | tr '\n' ' ' | sed -r 's/[^a-z]+/-/g' | cut -c 1-60"

setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY
[ "$TERM" = dumb ] && unsetopt zle

export EDITOR='emacs'
export NODE_NO_READLINE=1

# mactex
# eval `/usr/libexec/path_helper -s`

