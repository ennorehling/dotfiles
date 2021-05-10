if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
echo
if [ -e /usr/share/games/fortunes/hedberg ]; then
fortune -s /usr/share/games/fortunes/hedberg
fi
TZ='Europe/Oslo'; export TZ
NCURSES_NO_UTF8_ACS=1; export NCURSES_NO_UTF8_ACS
if [ -f ~/.profile ]; then
   source ~/.profile
fi
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
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

