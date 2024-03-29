[ -f ~/.bashrc ] && source ~/.bashrc
TZ='Europe/Oslo'; export TZ
NCURSES_NO_UTF8_ACS=1; export NCURSES_NO_UTF8_ACS
if [ -f ~/.profile ]; then
   source ~/.profile
fi

# set PATH so it includes user's private bin if it exists
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"
[ -d "/opt/bin" ] && PATH="/opt/bin:$PATH"
# MacPorts Installer addition: adding an appropriate PATH variable for use with MacPorts.
[ -d "/opt/local/bin" ] && PATH="/opt/local/bin:/opt/local/sbin:$PATH"
test -n "$(which keychain)" && eval `keychain --eval --agents ssh`
test -n "$(which fortune)" && fortune -s
export PATH
export EDITOR=vim
export VISUAL=vim
