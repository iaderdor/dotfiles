"    _       _ _         _           
"   (_)     (_) |       (_)          
"    _ _ __  _| |___   ___ _ __ ___  
"   | | '_ \| | __\ \ / / | '_ ` _ \ 
"   | | | | | | |_ \ V /| | | | | | |
"   |_|_| |_|_|\__(_)_/ |_|_| |_| |_| from iaderdor
"
"
" This is my personally init.vim file. It's inspired in danirod's one, between
" anothers.
"


" 1. Plug loading with vim-plug
source $HOME/.config/nvim/plugins.vim


" 2. Stay in the future
set nocompatible
set history=1000
set noswapfile
set nobackup


syntax on
filetype plugin on
set path+=**                " When searching, look also into the subfolders
set wildmenu

" 3. Maps
source $HOME/.config/nvim/maps.vim

" 4. Colors
set termguicolors
colorscheme NeoSolarized

" 5. Indentation options
" TODO: Split in another file. Different options to different languages
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
set wildmenu



" 5. Status bar
source $HOME/.config/nvim/statusbar.vim
