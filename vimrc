call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
call plug#end()


" file
set fenc=utf-8
set encoding=utf-8
scriptencoding utf-8

set nobackup
set noswapfile
set noundofile
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
set title
set number
set cursorline
set clipboard=unnamed

set wildmenu

set visualbell
set showmatch
set wildmode=list:longest

set statusline+=%F
set statusline+=%m
set statusline+=%r
set statusline+=%=
set statusline+=[line=%l/%L]
set laststatus=2

syntax enable
colorscheme iceberg

"set background=dark
"colorscheme hybrid
