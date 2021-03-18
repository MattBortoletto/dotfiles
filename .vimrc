set number          " Show line numbers
set relativenumber  " Show relative numbers
syntax on           " Syntax highlighting
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set noerrorbells
set smartindent
set smartcase
set nobackup
set noswapfile
set undodir=~/.vim/undodir
set undofile
set ruler           " Show the cursor position all the time 
set showcmd         " Display incomplete commands
"set laststatus=2    " Show status line on startup

" PLUGINS:

call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scroolose/nerdtree'
Plug 'benmills/vimux'
call plug#end()

" Open new split panels to right and bottom, which feels more natural
set splitbelow
set splitright
set ignorecase smartcase              " Search queries intelligently set case
set incsearch                         " Show search results as you type

" Color scheme
color hhdgray 

" Set the number column transparent
highlight LineNr cterm=NONE ctermfg=Grey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" NERDTree:

" open NERDTree automatically
"autocmd VimEnter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" mapping keys 
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all the file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer

" AUTOCOMPLETE:
" The good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames
" - ^x^j for tags only
" - ^n for anything specified in the 'complete' option

" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0 
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_listyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - :<CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings
" - ^x^f for filenames (works with our path trick!)
" - ^x^j for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list

