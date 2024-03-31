alias systemctl='systemctl -l --no-pager'
alias ta='tmux attach || tmux'
alias mc='mc -X -u'
alias ..='cd ..'
alias ll='ls -l'
alias dir='ls -G -lAh'
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias tinker='php artisan tinker'
umask 0077

PATH=/sbin:$PATH
[ -d /usr/lib/mutt/ ] && PATH=/usr/lib/mutt/:$PATH
[ -d /opt/bin/ ] && PATH=/opt/bin/:$PATH
[ -d $HOME/bin/ ] && PATH=$HOME/bin/:$PATH
[ -d $HOME/.config/composer/vendor/bin ] && \
	PATH=$HOME/.config/composer/vendor/bin:$PATH
[ -d $HOME/.local/bin ] && PATH=$HOME/.local/bin/:$PATH
if [ -d ~/eressea ]; then
  alias e2='cd ~/eressea/game-2'
  alias e3='cd ~/eressea/game-3'
  alias e4='cd ~/eressea/game-4'
  alias eg='cd ~/eressea/git'
fi

if [ -d ~/.composer/vendor/bin ]
then
  PATH=/.composer/vendor/bin:$PATH
elif [ -d  ~/.config/composer/vendor/bin ]
then
  PATH=~/.config/composer/vendor/bin:$PATH
fi
if [ -d /usr/local/opt/coreutils/libexec/gnubin ]; then
  PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
fi
  
if [ -d ~/.luarocks ]; then
  eval `luarocks path`
fi

for source in \
/Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash \
/Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh \
/etc/bash_completion.d/git \
/etc/bash_completion.d/git-prompt 
do
  [ -e $source ] && . $source
done
PS1='\[\033]0;\u@\h: \w\007\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]$(__git_ps1 '@%s')\$ '
[ -d ~/.config/composer/vendor/bin ] && \
  export PATH="$HOME/.config/composer/vendor/bin:$PATH"
[ -d ~/.venv/bin ] && \
  export PATH="$HOME/.venv/bin:$PATH"
export LESS="IFRSXx4"
export NCURSES_NO_UTF8_ACS=1
if [ -d ~/eressea ]; then
  export ERESSEA_DIR=$HOME/eressea/git
fi

export CLICOLOR=1
if which dircolors >/dev/null; then
	if [ -e ~/.dircolors ]; then
        eval $(dircolors -b ~/.dircolors)
	fi
else
	# macOS uses another variable and sytax.
	export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
fi
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

#in .bash_profile:
#export EDITOR=vim
#export VISUAL=vim
alias ca="cd ~/Sites/admin"
alias cl="cd ~/Sites/api"
alias pa="php artisan"

