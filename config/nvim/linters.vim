"
" Options for linters and fixers
"

" Warning and error signs

let g:ale_sign_error = '=>'
let g:ale_sign_warning = '->' 

" Set linters and fixers to be used

let g:ale_linters_explicit = 1

let g:ale_linters = {
\   'ruby': ['rubocop','solargraph'],
\   'python': ['flake8'],
\   'html': ['eslint'],
\   'css': ['eslint'],
\   'scss': ['eslint'],
\   'javascript': ['eslint'],
\   'cpp': ['cc','clangtidy']
\}

let g:ale_fixers = {
\   'ruby': ['rubocop'],
\   'python': ['autopep8'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'javascript': ['prettier']
\}

let g:ale_fix_on_save = 1
let g:ale_ruby_rubocop_auto_correct_all = 1


" Use ALE completion
let g:ale_completion_enabled = 1


" JS

let g:ale_javascript_eslint_options="-c ~/.config/eslintrc.json"
let g:ale_javascript_prettier_use_local_config = 1
