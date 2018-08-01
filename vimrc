call plug#begin('~/.vim/plugged')

call plug#end()



" file
set fenc=utf-8
set encoding=utf-8
scriptencoding utf-8

set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set fileformats=unix,dos,mac
set ambiwidth=double

filetype on
filetype indent on

" tab indent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" search
set incsearch
set hlsearch


" other
set number
set cursorline

set wildmenu

set virtualedit=onemore
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest

set ruler
set title

syntax enable
colorscheme iceberg
