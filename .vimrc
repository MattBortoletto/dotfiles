" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Mouse and backspace
set mouse=a  " note: now to copy from vim you have to press Option
set bs=2     " make backspace behave like normal again 

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

filetype off
filetype plugin indent on
syntax on

colorscheme catppuccin_mocha
set termguicolors
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set noswapfile
set autoindent
set fileformat=unix
set number 
set ruler
set ai
set noerrorbells
set encoding=utf-8
set wildmenu
set smartcase
set ignorecase smartcase 
set path+=**

hi Normal guibg=NONE ctermbg=NONE
