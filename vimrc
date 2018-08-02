" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
call plug#end()

" ale
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_sign_column_always = 1
let g:ale_linters = {
\  'javascript': ['jshint'],
\}

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
set noruler
set cursorline
set clipboard=unnamed

set wildmenu

set visualbell
set showmatch
set wildmode=list:longest


set statusline=%f               " filename relative to current $PWD
set statusline+=%h              " help file flag
set statusline+=%m              " modified flag
set statusline+=%r              " readonly flag
set statusline+=\ [%{&ff}]      " Fileformat [unix]/[dos] etc...
set statusline+=\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})  " last modified timestamp
set statusline+=%=

set statusline+=[line=%l/%L]
set laststatus=2

syntax enable
"colorscheme iceberg

set background=dark
colorscheme hybrid
