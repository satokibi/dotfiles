#!/bin/bash

has() {
  type "$1" > /dev/null 2>&1
}


# brew
if has "brew"; then
  echo "$(tput setaf 2)Already installed Homebrew ✔︎$(tput sgr0)"
else
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# vim plug
if test -e ${HOME}"/.vim/autoload/plug.vim"; then
  echo "$(tput setaf 2)Already installed plug.vim ✔︎$(tput sgr0)"
else
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


DOT_DIRECTORY="${HOME}/dotfiles"
REMOTE_URL="https://github.com/satokibi/dotfiles.git"

if [ ! -d ${DOT_DIRECTORY} ]; then
  echo "Downloading dotfiles..."
  mkdir ${DOT_DIRECTORY}
  git clone "${REMOTE_URL}" "${DOT_DIRECTORY}"
  echo $(tput setaf 2)Download dotfiles complete!. ✔︎$(tput sgr0)
fi


# dotfiles
${DOT_DIRECTORY}/link.sh
