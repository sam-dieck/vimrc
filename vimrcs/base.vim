
"-------------------------------------------------
"-- Plugins 
"-------------------------------------------------
filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'danilo-augusto/vim-afterglow'
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'mhinz/vim-signify'
Plug 'godlygeek/tabular'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'tommcdo/vim-exchange'
Plug 'nelstrom/vim-visual-star-search'
"Plug 'vhda/verilog_systemverilog.vim'
"Plug 'majutsushi/tagbar'
Plug 'christoomey/vim-tmux-navigator'
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"  Plug 'deoplete-plugins/deoplete-jedi'
"endif
call plug#end()

" Signify config
let g:signify_realtime=1

" Airline config
let g:airline_theme='afterglow'

" NERDTree config
let NERDTreeIgnore = ['\.pyc$', '__pycache__']

" Ultisnips config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"

" Deoplete config
"let g:deoplete#enable_at_startup = 1

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
" For real time plugins (e.g. signify)
"set updatetime=100

" Tabs and indent
filetype indent on
set autoindent
set tabstop=4
set shiftwidth=4
set sts=4
set expandtab
au FileType html,htmldjango setlocal ts=2 sw=2 sts=2 et

" Tags
set tags=tags
map <f9> :!/usr/local/bin/ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags ./ $(python -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")<cr>
