set tabstop=4
set paste
set foldmethod=marker
set laststatus=2
set number
set expandtab
set showmode
set showcmd
set showmatch
let g:syntastic_enable_signs=1
let b:shell = 'bash'
syntax on
"colorscheme elflord

" go-vim features starts here
filetype plugin indent on

" ale
let g:ale_linters = { 'go': ['govet', 'gofmt', 'golint', 'staticcheck', ], }

" popup doc window
"let g:go_doc_popup_window = 1

" Enable lsp for go by using gopls
"let g:completor_filetype_map = {}
"let g:completor_filetype_map.go = {'ft': 'lsp', 'cmd': 'gopls -remote=auto'}"

" Navigation commands
"au FileType go nmap <Leader>ds <Plug>(go-def-split)
"au FileType go nmap <Leader>dv <Plug>(go-def-vertical)

" Alternate commands
"au FileType go nmap <Leader>ae <Plug>(go-alternate-edit)
"au FileType go nmap <Leader>av <Plug>(go-alternate-vertical)

" Common Go commands
"au FileType go nmap <leader>r <Plug>(go-run)
"au FileType go nmap <leader>b <Plug>(go-build)
"au FileType go nmap <leader>t <Plug>(go-test)
"au FileType go nmap <leader>c <Plug>(go-coverage-toggle)
"au FileType go nmap <Leader>e <Plug>(go-rename)
"au FileType go nmap <Leader>s <Plug>(go-implements)
"au FileType go nmap <Leader>i <Plug>(go-info)

" golangci
"let g:go_metalinter_enabled = []
"let g:go_metalinter_command = 'golangci-lint'
"let g:go_metalinter_autosave = 1
"let g:go_metalinter_autosave_enabled = ['vet','revive','errcheck','staticcheck','unused','varcheck']

" highlights 
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

" gruvbox
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark    " Setting dark mode
