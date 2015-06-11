if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
echo
fortune -s /usr/share/games/fortunes/hedberg
TZ='Europe/Oslo'; export TZ
NCURSES_NO_UTF8_ACS=1; export NCURSES_NO_UTF8_ACS
