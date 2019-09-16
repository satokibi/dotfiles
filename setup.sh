#!/bin/sh

DOT_FILES=(vimrc zshrc tmux.conf)

for file in ${DOT_FILES[@]}
do
  echo setup .$file
  ln -sf $HOME/dotfiles/$file $HOME/.$file
done
