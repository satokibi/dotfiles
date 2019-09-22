#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

DOT_DIR="dots"
BIN_DIR="bin"

echo "# init dotfiles"
for file_dir in `\find ${CURRENT_DIR}/${DOT_DIR} -maxdepth 1 -type f`; do
  file=$(basename $file_dir)
  EXE="ln -sf ${CURRENT_DIR}/${DOT_DIR}/$file $HOME/.$file"
  echo ${EXE}
  ${EXE}
done

echo "# init scripts"
for file_dir in `\find ${CURRENT_DIR}/${BIN_DIR} -maxdepth 1 -type f`; do
  file=`basename $file_dir | cut -d . -f 1`
  EXE="sudo ln -sf ${CURRENT_DIR}/${BIN_DIR}/${file}.sh /usr/local/bin/${file}"
  echo ${EXE}
  ${EXE}
done

