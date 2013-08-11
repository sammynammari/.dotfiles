export PATH=/usr/local/bin:$PATH
export TERM=xterm-256color

source /usr/local/bin/virtualenvwrapper.sh

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias tmux="TERM=screen-256color-bce tmux"

alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias sl='ls'
alias cl='clear'


# database routes
drawbridge='data-team-drawbridge.elb.z.premise.is:8888'
bagheera='http://prod-bagheera.z.premise.is:8888'

# python
export PYTHONPATH=$PYTHONPATH:~/premise/grumpy-bear
