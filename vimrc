" vim-plug {{{
call plug#begin('~/.vim/plugged')
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'Yggdroot/indentLine'
Plug 'jpo/vim-railscasts-theme'
Plug 'w0ng/vim-hybrid'
Plug 'scrooloose/nerdtree'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'simeji/winresizer'
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

call plug#end()
" }}}


" indentLine {{{
let g:indentLine_color_term = 244
let g:indentLine_char = '¦'
" }}}


" netrw.vim {{{
" tree view
let g:netrw_liststyle = 3
" 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
let g:netrw_altv = 1
" 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
let g:netrw_alto = 1
" }}}

" NERDTree {{{
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" }}}

" winresizer {{{
let g:winresizer_start_key = '<C-k>'
" }}}

" vim-fugitive {{{
set diffopt+=vertical
" }}}

" ale {{{
" 保存時のみ実行する
let g:ale_lint_on_text_changed = 0
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
set fileencodings=utf-8,sjis
set ambiwidth=double

filetype on
filetype indent on
" }}}


" tab indent {{{
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

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
set formatoptions-=ro
" }}}

" scheme {{{
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none

syntax enable
set background=dark
" colorscheme hybrid
colorscheme rupza
" }}}

" status line color
highlight StatusLine ctermbg=gray ctermfg=black

