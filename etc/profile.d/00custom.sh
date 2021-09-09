# install
# lscolors-git
. "/usr/share/LS_COLORS/dircolors.sh"

alias ping='ping -i 0.2 -D '

#
alias ls='ls --color=auto '
#
alias grep='grep --color=auto '
alias fgrep='fgrep --color=auto '
alias egrep='egrep --color=auto '
#
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
#
alias forkbombhang=':(){ :|:& };:'

#
alias ip='ip -c '

# set a fancy prompt (non-color, overwrite the one in /etc/profile)
#if [ $(id -u) -eq 1000 ]; then
  # root user
#  export PS1='\n\e[31m\e[1m\u@\h\e[0m \e[94m\w\n \e[31m\e[1m#\e[0m\e[0m\e[39m\e[49m '
#else
  # non root
#  export PS1='\e[92m\e[1m$\e[0m\e[0m\e[39m\e[49m '
#fi
# shortcuts
#alias la='ls $LS_OPTIONS -all -h'
#alias ls='ls --color=auto '
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#
alias less='less --use-color '


#. "/usr/share/LS_COLORS/dircolors.sh"

