alias ta='tmux attach || tmux'
alias ..='cd ..'
alias ll='ls -l'
alias dir='ls --color=auto -lah'
#umask 0077
[ -d /usr/lib/mutt/ ] && PATH=/usr/lib/mutt/:$PATH
[ -d /opt/bin/ ] && PATH=/opt/bin/:$PATH
[ -d $HOME/bin/ ] && PATH=$HOME/bin/:$PATH
