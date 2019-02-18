PS1='\[\033]0;\u@\h: \w\007\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]$(__git_ps1 '@%s')\$ '
alias sudo='sudo -E'
alias ta='tmux attach || tmux'
alias ..='cd ..'
alias ll='ls -l'
alias dir='ls --color=auto -lah'
#umask 0077

export LC_ALL=$LANG
PATH=/sbin:$PATH
[ -d /usr/lib/mutt/ ] && PATH=/usr/lib/mutt/:$PATH
[ -d /opt/bin/ ] && PATH=/opt/bin/:$PATH
[ -d $HOME/bin/ ] && PATH=$HOME/bin/:$PATH

for source in \
/etc/bash_completion.d/git \
/etc/bash_completion.d/git-prompt
do
  [ -e $source ] && . $source && break
done
# PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

