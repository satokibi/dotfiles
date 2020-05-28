
DOT_DIR="${HOME}/dotfiles"
# 関数とか読み込み
source ${DOT_DIR}/etc/lib.sh

# brew
if has "brew"; then
  echo "$(tput setaf 2)Already installed Homebrew ✔︎$(tput sgr0)"
else
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if has "brew"; then
  # brew update && brew upgrade
  echo "brew"
fi

# brewでinstallしたいやつ
list=(
  git
  zsh
  tmux
  lua
  vim
  fzf
  ghq
  cask
  go
)

for p in ${list[@]}
do
  echo "install $p"
  brew install $p
done


# install go tools
go get golang.org/x/tools/cmd/goimports


# install npm
mkdir -p ~/.nodebrew/src
