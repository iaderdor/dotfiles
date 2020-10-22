"
" Plugins for neovim. Loaded with Vim-Plug 
"


call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree' " nerdtree is <3
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'junegunn/goyo.vim'          " Distraction free writing
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 

"
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'gregsexton/matchtag'      " Highlight html/xml tags

call plug#end()
