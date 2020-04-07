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

" I just found annoying Alt Gr + 1 = | just to get col. Remap to ç
noremap <Bar> <Nop>
noremap ç <Bar>


" Change between split windows with jklñ
nnoremap <C-J> <C-W><C-H>
nnoremap <C-K> <C-W><C-J>
nnoremap <C-L> <C-W><C-K>
"nnoremap <C-Ñ> <C-W><C-L> This does not work :( nvim issue #8343

" Toggle absolute or relative line number

function! ToggleRelativeLineNumber()
  if(&nu == 1)
    set nu!
      set rnu
    else
      set nornu
      set nu
  endif
endfunction

nnoremap <F4> :call ToggleRelativeLineNumber()<CR>

" Change emmet leader
let g:user_emmet_leader_key='<C-S>'

" Snippets
nnoremap ,rbclass :-1read $HOME/.local/share/nvim/snippets/rubyclass.rb<CR>gg4kO
nnoremap ,html :-1read $HOME/.local/share/nvim/snippets/skeleton.html<CR>gg4k11ñi
