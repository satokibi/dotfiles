" vim-plug {{{
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'Shougo/neocomplcache.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'Yggdroot/indentLine'
Plug 'thinca/vim-quickrun'
Plug 'KeitaNakamura/railscasts.vim'
call plug#end()
" }}}

" ale {{{
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_sign_column_always = 0
let g:ale_linters = {
\  'javascript': ['jshint'],
\  'python': ['flake8'],
\}
" }}}

" neocomplcache.vim {{{
" 起動時に有効
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
\ }
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><CR>  pumvisible() ? neocomplcache#close_popup() : "<CR>"
" }}}

" indentLine {{{
let g:indentLine_color_term = 244
let g:indentLine_char = '¦'
" }}}

" vim-quickrun {{{
let g:quickrun_config = {
\   '_' : {
\       'outputter/buffer/split' : ':botright 8sp',
\       'outputter/buffer/close_on_empty' : 1,
\       'hook/time/enable' : 1,
\   }
\}
" }}}

" netrw.vim {{{
" tree view
let g:netrw_liststyle = 3
" 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
let g:netrw_altv = 1
" 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
let g:netrw_alto = 1
" }}}

" vim-quickrun {{{
" \       'split' : '',
let g:quickrun_config = {
\   '_' : {
\       'outputter/buffer/split' : ':botright 8sp',
\       'outputter/buffer/close_on_empty' : 1,
\       'hook/time/enable' : 1,
\   }
\}
" }}}

" file {{{
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
" }}}


" tab indent {{{
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
" }}}

" search {{{
set incsearch
set hlsearch
" }}}


" other {{{
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
" }}}

" scheme {{{
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none

syntax enable
" colorscheme slate
" colorscheme iceberg
" colorscheme railscasts

set background=dark
colorscheme hybrid
" }}}

" status line color
highlight StatusLine ctermbg=gray ctermfg=black

