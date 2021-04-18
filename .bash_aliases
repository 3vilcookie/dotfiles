#!/bin/bash

# cd 
alias ..='cd ..'
alias ...='cd ../..'

# ls
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
#alias s='ssh -l root'

# Enable color support for several tools
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# Tmux
alias tmux="TERM=xterm-256color ~/tmux_startup.sh"
alias r="ranger"

# Git
alias gcp="git commit -p"
alias grb="git rebase -i master"
alias haltstopp="git commit --amend"
