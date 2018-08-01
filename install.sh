#!/bin/sh

rm ~/.vimrc
rm -r ~/.vim

ln -s ~/dotfiles/_vim ~/.vim
ln -s ~/dotfiles/_vimrc ~/.vimrc
