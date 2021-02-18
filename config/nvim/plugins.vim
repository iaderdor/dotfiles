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
"{{{
  let g:fzf_layout = { 'down': '~5%' }

  " This prevents that nvim substitutes :W with :Windows. I want nvim to save my
  " file if I mistype :W (which by a totally unfortunately coincidence, happens
  " a lot)
  command! -nargs=* W w   
"}}}

Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'gregsexton/matchtag'      " Highlight html/xml tags
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
