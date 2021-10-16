# install
# lscolors-git
. "/usr/share/LS_COLORS/dircolors.sh"

alias ping='ping -i 0.2 -D '


# passwords

function pwgen {
  if [ -z "$1" ]; then
    echo "Usage: pwgen <weak|strong|lmao>"
  else

      case $1 in
        *weak)      openssl rand -base64 1024    ;;
        *strong)    tr -dc '_A-Z-a-z-0-9!@#$%'</dev/urandom|head -c1024|fold -w 64 && echo ;;
        *lmao)      date +%s | sha512sum | base32 | head -c 1024 && echo   ;;
        *)           echo "pwgen: '$1' - unknown pwgen method" ;;
      esac
  fi
}

alias randomip='printf "%d.%d.%d.%d\n" "$((RANDOM % 255))" "$((RANDOM % 255))" "$((RANDOM % 255))" "$((RANDOM % 255))"'

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

alias e="nano"


#
alias less='less --use-color '

#
alias reboot='sync; echo 3 > /proc/sys/vm/drop_caches; sync; reboot'
alias poweroff='sync; echo 3 > /proc/sys/vm/drop_caches; sync; poweroff'
#
#
if [ "$SHELL" = "/bin/bash" ]; then alias history="cat ~/.bash_history"; fi

#. "/usr/share/LS_COLORS/dircolors.sh"
##
##
##
# Archives
function extract {
  if [ -z "$1" ]; then
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
  else
    if [ -f $1 ]; then
      case $1 in
        *.tar.bz2)   tar xvjf $1    ;;
        *.tar.gz)    tar xvzf $1    ;;
        *.tar.xz)    tar xvJf $1    ;;
        *.lzma)      unlzma $1      ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar x -ad $1 ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xvf $1     ;;
        *.tbz2)      tar xvjf $1    ;;
        *.tgz)       tar xvzf $1    ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *.xz)        unxz $1        ;;
        *.exe)       cabextract $1  ;;
        *)           echo "extract: '$1' - unknown archive method" ;;
      esac
    else
      echo "$1 - file does not exist"
    fi
  fi
}
alias extr='extract '
function extract_and_remove {
  extract $1
  rm -f $1
}
alias extrr='extract_and_remove '
