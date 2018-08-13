# Created by newuser for 5.5.1

export LANG=ja_JP.UTF-8
PROMPT='%F{cyan}[%~]%f
%% '
RPROMPT="[%*]"

autoload -Uz colors
colors

autoload -U compinit
compinit

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=00;34:ln=01;35:so=01;32:ex=00;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export ZLS_COLORS=$LS_COLORS
export CLICOLOR=true
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*:default' menu select=2

setopt auto_cd
setopt hist_ignore_all_dups
setopt auto_list
setopt auto_menu

setopt correct
SPROMPT="zsh: correct %F{red}'%R'%f -> %F{cyan}'%r'%f [nyae]? "

alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

# export PATH="your_parh:$PATH"
export PATH="/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin:$PATH"
export PATH="/opt/local/bin:$PATH"
# prefixspanのためだけ
export PATH="$HOME/workspace/syuron/prefixspan-rel-1.3:$PATH"
# for node.js
export PATH="$HOME/.nodebrew/current/bin:$PATH"

