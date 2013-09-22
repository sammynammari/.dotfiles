# add these to the beginning of the path so that Homebrew's python gets loaded first
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/python:$PATH

# set gnuplot to use x11 instead of aquaterm
export GNUTERM='x11'


#export TERM=xterm-256color

#source /usr/local/bin/virtualenvwrapper.sh

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias csv='column -s , -t'

alias tmux="TERM=screen-256color-bce tmux"

alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias sl='ls'
alias cl='clear'

