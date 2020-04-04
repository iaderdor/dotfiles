"
" ruby specific options
"

let g:ruby_autocomplete_solargraph = get(g:, 'ruby_autocomplete_solargraph', 0)

let g:LanguageClient_serverCommands = {
    \ 'ruby': [g:ruby_autocomplete_solargraph, 'stdio']
    \ }

autocmd FileType ruby setlocal omnifunc=LanguageClient#complete

setlocal expandtab
setlocal shiftwidth=2       " spaces for autoindenting
setlocal softtabstop=2      " remove a full pseudo-TAB when pressing <BS>
