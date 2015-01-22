# use oh my zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cypher"

set -a
PROMPT='%T %? %m%# '
WORDCHARS="*?[]~=&;!#$%^(){}<>"
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zhistory

plugins=(git battery github node colorize sudo virtualenv brew)
source $ZSH/oh-my-zsh.sh

#Aliases
alias ll='ls -l'
alias s='git status'
alias b='git branch -av'
alias grunt='grunt --no-color'
alias irc="TERM=screen-256color irssi"

setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY
[ "$TERM" = dumb ] && unsetopt zle

#prefer emacs
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='emacs'
else
  export EDITOR='mvim'
fi
