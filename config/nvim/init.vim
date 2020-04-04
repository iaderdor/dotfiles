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
set encoding=utf-8


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

highlight ColorColumn ctermbg=gray
set colorcolumn=80

" 6. Appearance
syntax on
filetype plugin on

set showmode            " always show which more are we in
set laststatus=2        " always show statusbar

set number              " show line numbers
set showmatch           " higlight matching parentheses and brackets
set wildmenu            " enable visual wildmenu

set path+=**            " When searching, look also into the subfolders


" 7. Statusbar
source $HOME/.config/nvim/statusbar.vim

" 8. Linters

let g:ale_linters_explicit = 1

let g:ale_linters = {
\   'ruby': ['rubocop','solargraph'],
\   'html': ['stylelint'],
\   'css': ['stylelint'],
\   'scss': ['stylelint']
\}

let g:ale_fixers = {
\   'ruby': ['rubocop'],
\   'html': ['stylelint'],
\   'css': ['stylelint'],
\   'scss': ['stylelint'],
\}
let g:ale_fix_on_save = 1
