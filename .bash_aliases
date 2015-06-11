alias sudo='sudo -E'
alias ta='tmux attach || tmux'
alias ..='cd ..'
alias ll='ls -l'
alias dir='ls --color=auto -lah'
#umask 0077
PATH=/sbin:$PATH
[ -d /usr/lib/mutt/ ] && PATH=/usr/lib/mutt/:$PATH
[ -d /opt/bin/ ] && PATH=/opt/bin/:$PATH
[ -d $HOME/bin/ ] && PATH=$HOME/bin/:$PATH
if [ -d ~/eressea ]; then
  alias e2='cd ~/eressea/game-2'
  alias e3='cd ~/eressea/game-3'
  alias e4='cd ~/eressea/game-4'
fi

if [ -x /opt/bin/luarocks ]; then
  eval `/opt/bin/luarocks path`
fi
LUA_PATH="$LUA_PATH;./?/init.lua"


for source in \
/etc/bash_completion.d/git \
/etc/bash_completion.d/git-sh-prompt
do
  [ -e $prompt ] && . $source && break
done
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]$(__git_ps1 '@%s')\$ '
