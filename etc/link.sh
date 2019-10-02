#!/bin/bash

DOTFILES_DIR="${HOME}/dotfiles/dots"
BINFILES_DIR="${HOME}/dotfiles/bin"

# dotsディレクトリからファイル取得
for file_dir in `\find ${DOTFILES_DIR} -maxdepth 1 -type f`; do
  file=$(basename $file_dir)
  # シンボリックリンク -> .(ドット)つけて~に
  ln -svf ${DOTFILES_DIR}/$file $HOME/.$file
done

# binディレクトリからファイル取得
for file_dir in `\find ${BINFILES_DIR} -maxdepth 1 -type f`; do
  file=`basename $file_dir | cut -d . -f 1`
  # シンボリックリンク -> .shつけたやつを binに.shなしで
  ln -svf ${BINFILES_DIR}/${file}.sh ${HOME}/bin/${file}
done
