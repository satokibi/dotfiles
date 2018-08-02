#!/bin/sh

dir_org='~/vim_org'

if [ ! -e $dir_org ]; then
	mkdir ~/vim_org
fi

mv ~/.vimrc ~/vim_org
mv ~/.vim ~/vim_org

ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc
