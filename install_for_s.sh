#!/bin/sh

# vim {{{
vim_org=~/vim_org

if [ ! -e $vim_org ]; then
	mkdir $vim_org
elif [ -e "$vim_org/.vim" ]; then
  rm -rf "$vim_org/.vim_"
  mv "$vim_org/.vim" "$vim_org/.vim_"
  rm -rf "$vim_org/.vim"
else
  rm -rf "$vim_org/.vim"
fi

mv ~/.vimrc $vim_org
mv ~/.vim $vim_org

ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc
# }}} 


# git-bash {{{
git_bash_prompt_dir=/etc/profile.d
git_bash_prompt=$git_bash_prompt_dir/git-prompt.sh

mv $git_bash_prompt $git_bash_prompt_dir/git-prompt.sh.org
ln -s ~/dotfiles/git-prompt-s.sh $git_bash_prompt_dir/git-prompt.sh
# }}}

