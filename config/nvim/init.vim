" iaderdor's vimrc
"
" This is my personally vimrc. It's inspired in danirod's one.
"
"

" Let's load some plugins with vim-plug!


call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree' " nerdtree is <3
Plug 'plasticboy/vim-markdown'

call plug#end()


" Stay in the future
set nocompatible
set history=1000
set noswapfile
set nobackup


" Disable arrow keys and remap hjkl keys to jklñ
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap h <Nop>
noremap j h
noremap k j
noremap l k
noremap ñ l

" Mouse things
set mouse=a

" Indentation options
set autoindent              " autoindent always ON.
set expandtab               " expand tabs
set shiftwidth=2            " spaces for autoindenting
set softtabstop=2           " remove a full pseudo-TAB when i press <BS>

set encoding=utf-8

set showmode            " always show which more are we in
set laststatus=2        " always show statusbar
set wildmenu            " enable visual wildmenu

set number              " show line numbers
set showmatch           " higlight matching parentheses and brackets


map <F5> :NERDTreeToggle<CR>

syntax on
