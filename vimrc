" enable pathogen.vim plugin
call pathogen#infect()

filetype on
syntax on

" indent from the previuos line
set autoindent

" line numbering
set number

" incremental search
set incsearch

" highligh search
set hlsearch

" use spaces not tabs
set expandtab
set shiftwidth=4 
set softtabstop=4

" highligh current line
set cul
hi CursorLine term=none cterm=none ctermbg=grey

" show cmd being written
set showcmd

" highligh column 80
set colorcolumn=80
