
" Font & Syntax highlight
syntax on
colorscheme xoria256
set guifont=courier\ new:h20

" Line numbers
set nu

" Tabs
set tabstop=4
set shiftwidth=4
set sts=4
set expandtab
au FileType html,htmldjango setlocal ts=2 sw=2 sts=2 et
au FileType vhdl setlocal ts=2 sw=2 sts=2 et

" Indent
filetype indent on
set autoindent

" No backup files (~files)
set nobackup

" Terminal configuration
set mouse=a
set t_Co=256

" Plugins configurations
filetype plugin on
execute pathogen#infect()

let NERDTreeIgnore = ['\.pyc$']
