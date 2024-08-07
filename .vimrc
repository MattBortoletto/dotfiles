" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
set clipboard=unnamed

" Mouse and backspace
set mouse=a  
set bs=2     " make backspace behave like normal again 

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
" set t_Co=256
" color wombat256mod

" colorscheme retrobAox

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set noswapfile
set autoindent
set fileformat=unix
set number 
set noerrorbells
set encoding=utf-8
set wildmenu
set smartcase
set ruler 
set ignorecase smartcase 
set path+=**

" hi StatusLine ctermbg=0 ctermfg=Grey

" Set the number column transparent
hi LineNr cterm=NONE ctermfg=Grey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


