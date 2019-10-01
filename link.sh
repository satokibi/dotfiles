#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

DOT_DIR="dots"
BIN_DIR="bin"

# dotsディレクトリからファイル取得
for file_dir in `\find ${CURRENT_DIR}/${DOT_DIR} -maxdepth 1 -type f`; do
  file=$(basename $file_dir)
  # シンボリックリンク -> .(ドット)つけて~に
  ln -svf ${CURRENT_DIR}/${DOT_DIR}/$file $HOME/.$file
done

# binディレクトリからファイル取得
for file_dir in `\find ${CURRENT_DIR}/${BIN_DIR} -maxdepth 1 -type f`; do
  file=`basename $file_dir | cut -d . -f 1`
  # シンボリックリンク -> .shつけたやつを binに.shなしで
  sudo ln -svf ${CURRENT_DIR}/${BIN_DIR}/${file}.sh /usr/local/bin/${file}
done
