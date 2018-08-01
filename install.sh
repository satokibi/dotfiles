#!/bin/sh

rm ~/.vimrc
rm -r ~/.vim

ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc
