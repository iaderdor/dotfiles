"
" Options for linters and fixers
"

" Warning and error signs

let g:ale_sign_error = '->'
let g:ale_sign_warning = '⚠️'

" Set linters and fixers to be used

let g:ale_linters_explicit = 1

let g:ale_linters = {
\   'ruby': ['rubocop','solargraph'],
\   'html': ['eslint'],
\   'css': ['eslint'],
\   'scss': ['eslint'],
\   'javascript': ['eslint']
\}

let g:ale_fixers = {
\   'ruby': ['rubocop'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'javascript': ['prettier']
\}

let g:ale_fix_on_save = 1


" Use ALE completion
let g:ale_completion_enabled = 1