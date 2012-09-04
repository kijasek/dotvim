" enable pathogen.vim plugin
filetype off
call pathogen#infect()

" enable plugins
filetype plugin indent on

" disable vi compatibility
set nocompatible

" store backup files in one location
set backupdir=~/.vim-tmp,~/tmp,/tmp
set directory=~/.vim-tmp,~/tmp,/tmp

" Intuitive backspacing in insert mode
set backspace=indent,eol,start

" highligh syntax
syntax on

" indent from the previuos line
set autoindent

" line numbering
set number

" incremental search
set incsearch

" highligh search
set hlsearch

" smarter searching
set ignorecase
set smartcase

" use spaces not tabs
set expandtab
set shiftwidth=4 
set softtabstop=4
set tabstop=4

" highligh current line
set cul
hi CursorLine term=none cterm=none ctermbg=grey

" show cmd being written
set showcmd

" highligh column 80
set colorcolumn=80

" utf8
set encoding=utf-8

" NERDTree shortcut
noremap <silent> <F2> :NERDTreeToggle<CR>

" Start scrolling when we're 8 lines away from margins
set scrolloff=8 

" command menu
set wildmenu
set wildmode=list:longest


