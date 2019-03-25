
"-------------------------------------------------
"-- Plugins 
"-------------------------------------------------
filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'danilo-augusto/vim-afterglow'
call plug#end()

" NERDTree config
let NERDTreeIgnore = ['\.pyc$', '__pycache__']

"-------------------------------------------------
"-- Editor 
"-------------------------------------------------
" Font & syntax
syntax on
colorscheme afterglow
set guifont=courier\ new:h20

" Misc configuration 
set nu
"set ic
set nobackup
"set noundofile
"set nowritebackup
set guioptions-=T
" Terminal config
set mouse=a
set t_Co=256

" Tabs and indent
filetype indent on
set autoindent
set tabstop=4
set shiftwidth=4
set sts=4
set expandtab
au FileType html,htmldjango setlocal ts=2 sw=2 sts=2 et
au FileType vhdl,verilog setlocal ts=2 sw=2 sts=2 et

" Tags
set tags=tags
map <f9> :!/usr/local/bin/ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags ./ $(python -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")<cr>
