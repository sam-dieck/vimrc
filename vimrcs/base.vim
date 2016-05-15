
"-------------------------------------------------
"-- Editor 
"-------------------------------------------------
" Font & syntax
syntax on
colorscheme xoria256
set guifont=courier\ new:h20

" Line numbers
set nu

" Tabs and indent
filetype indent on
set autoindent
set tabstop=4
set shiftwidth=4
set sts=4
set expandtab
" Change html/vhdl to 2 space tabs
au FileType html,htmldjango setlocal ts=2 sw=2 sts=2 et
au FileType vhdl setlocal ts=2 sw=2 sts=2 et

" Terminal configuration
set mouse=a
set t_Co=256

" No backup files (~files)
set nobackup

"-------------------------------------------------
"-- Plugins 
"-------------------------------------------------
filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

" NERDTree config
let NERDTreeIgnore = ['\.pyc$']
