#!/bin/bash

DOT_DIR="${HOME}/dotfiles"
REMOTE_URL="https://github.com/satokibi/dotfiles.git"

if [ ! -d ${DOT_DIR} ]; then
  echo "Downloading dotfiles..."
  mkdir ${DOT_DIR}
  git clone "${REMOTE_URL}" "${DOT_DIR}"
  echo $(tput setaf 2)Download dotfiles complete!. ✔︎$(tput sgr0)
fi

BIN_DIR="${HOME}/bin"
if [ ! -d ${BIN_DIR} ]; then
  mkdir ${BIN_DIR}
fi

# dotfiles
${DOT_DIR}/etc/link.sh


# vim plug
if test -e ${HOME}"/.vim/autoload/plug.vim"; then
  echo "$(tput setaf 2)Already installed plug.vim ✔︎$(tput sgr0)"
else
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


# OS別
if [ "$(uname)" == 'Darwin' ]; then
  ${DOT_DIR}/etc/init/osx.sh
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  echo "Linux"
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then                                                                                           
  echo "Cygwin"
else
  echo "Your platform ($(uname -a)) is not supported."
  exit 1
fi
