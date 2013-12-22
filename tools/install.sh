#!/bin/bash

if [ -d ~/.goldfish ]
then
  echo -e "\033[0;33mYou already have Goldfish installed.\033[0m You'll need to remove ~/.goldfish if you want to install"
  exit
fi

echo -e "\033[0;34mCloning Goldfish...\033[0m"
hash git >/dev/null && /usr/bin/env git clone https://github.com/demiazz/goldfish.git ~/.goldfish || {
  echo -e "git not installed"
  exit
}

echo -e "\033[0;34mLooking for an existing fish config...\033[0m"
if [ -f ~/.config/fish/config.fish ] || [ -h ~/.config/fish/config.fish ]
then
  echo -e "\033[0;33mFound ~/.config/fish/config.fish.\033[0m \033[0;32mBacking up to ~/.config/fish/config.orig\033[0m";
  mv ~/.config/fish/config.{fish,orig}
fi

echo -e "\033[0;34mUsing the Goldfish template file and adding it to ~/.config/fish/config.fish\033[0m"
cp ~/.goldfish/templates/config.fish ~/.config/fish/config.fish

echo -e "\033[0;33m"'                                      '"\033[0m"
echo -e "\033[0;33m"'    ___======____=---=)               '"\033[0m"
echo -e "\033[0;33m"'  /T            \_--===)              '"\033[0m"
echo -e "\033[0;33m"'  [ \ (0)   \~    \_-==)              '"\033[0m"
echo -e "\033[0;33m"'   \      / )J~~    \-=)              '"\033[0m"
echo -e "\033[0;33m"'    \\___/  )JJ~~~   \)               '"\033[0m"
echo -e "\033[0;33m"'     \_____/JJ~~~~~    \              '"\033[0m"
echo -e "\033[0;33m"'     / \  , \J~~~~~     \             '"\033[0m"
echo -e "\033[0;33m"'    (-\)\=|\\\~~~~       L__          '"\033[0m"
echo -e "\033[0;33m"'    (\\)  (\\\)_           \==__      '"\033[0m"
echo -e "\033[0;33m"'     \V    \\\) ===_____   \\\\\\     '"\033[0m"
echo -e "\033[0;33m"'            \V)     \_) \\\\JJ\J\)    '"\033[0m"
echo -e "\033[0;33m"'                        /J\JT\JJJJ)   '"\033[0m"
echo -e "\033[0;33m"'                        (JJJ| \UUU)   '"\033[0m"
echo -e "\033[0;33m"'                         (UU)         '"\033[0m"

echo -e "\n\n \033[0;33m Goldfish is now installed.\033[0m"

/usr/bin/env fish
