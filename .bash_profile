[ -f ~/.bashrc ] && source ~/.bashrc
TZ='Europe/Oslo'; export TZ
NCURSES_NO_UTF8_ACS=1; export NCURSES_NO_UTF8_ACS
if [ -f ~/.profile ]; then
   source ~/.profile
fi

# set PATH so it includes user's private bin if it exists
if [ -d "/opt/bin" ] ; then
    PATH="/opt/bin:$PATH"
fi
PATH="/opt/bin:$PATH"
PATH="/opt/coverity/bin:$PATH"
PATH="/opt/letsencrypt/bin:$PATH"
PATH="$HOME/bin:$PATH"
export PATH
echo ""
[ -d /usr/share/games/fortunes ] && /usr/games/fortune 
eval `keychain --eval --agents ssh`
export EDITOR=vim
export VISUAL=vim
