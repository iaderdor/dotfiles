"
" Key maps for complementing init.vim
"


" NERDTree
map <F5> :NERDTreeToggle<CR>

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

" I just found annoying Alt Gr + 1 = | just to get bol. Remap to ç
noremap <Bar> <Nop>
noremap ç <Bar>


" Change between split windows with jklñ
nnoremap <C-J> <C-W><C-H>
nnoremap <C-K> <C-W><C-J>
nnoremap <C-L> <C-W><C-K>
nnoremap <C-Ñ> <C-W><C-L>


" Mouse control
set mouse=a