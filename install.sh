#!/bin/sh

dir_org=~/vim_org

if [ ! -e $dir_org ]; then
	mkdir ~/vim_org
elif [ -e "$dir_org/.vim" ]; then
  rm -rf "$dir_org/.vim_"
  mv "$dir_org/.vim" "$dir_org/.vim_"
  rm -rf "$dir_org/.vim"
else
  rm -rf "$dir_org/.vim"
fi

mv ~/.vimrc $dir_org
mv ~/.vim $dir_org

ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc
