[ -f ~/.bashrc ] && source ~/.bashrc
TZ='Europe/Oslo'; export TZ
NCURSES_NO_UTF8_ACS=1; export NCURSES_NO_UTF8_ACS
if [ -f ~/.profile ]; then
   source ~/.profile
fi

# set PATH so it includes user's private bin if it exists
[ -d "/opt/bin" ] && PATH="/opt/bin:$PATH"
# MacPorts Installer addition: adding an appropriate PATH variable for use with MacPorts.
[ -d "/opt/local/bin" ] && PATH="/opt/local/bin:/opt/local/sbin:$PATH"
[ -d "/opt/local/man" ] && MANPATH="/opt/local/man:$MANPATH"
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"
[ -d "$HOME/node_modules/.bin" ] && PATH="$HOME/node_modules/.bin:$PATH"
test -n "$(which keychain)" && eval `keychain --eval --inherit any --agents ssh id_rsa id_ed25519`
test -n "$(which fortune)" && fortune -s
export PATH
export MANPATH
export EDITOR=vim
export VISUAL=vim
