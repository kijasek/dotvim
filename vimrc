" enable pathogen.vim plugin
filetype off
call pathogen#infect()

" enable plugins
filetype plugin indent on

" disable vi compatibility
set nocompatible

" store backup files in one location
set backupdir=~/.vim/sessions,~/tmp,/tmp
set directory=~/.vim/sessions,~/tmp,/tmp

" colorscheme and gui tunning
if has('gui_running')
   " Remove menu bar
   set guioptions-=m
   " Remove toolbar
   set guioptions-=T
   " map ctrl x ctrl o to ctrl space
   inoremap <C-Space> <C-x><C-o>
else
   set t_Co=256
   " map ctrl x ctrl o to ctrl space
   inoremap <C-@> <C-x><C-o>
   " fot theme to working ok
   let g:solarized_termcolors=256
endif
" theme
colorscheme solarized

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
" that might be useful, depending on colorscheme
"hi CursorLine term=none cterm=none ctermbg=grey

" show cmd being written
set showcmd

" highligh column 80
set colorcolumn=80

" utf8
set encoding=utf-8

" NERDTree shortcut
noremap <silent> <F2> :NERDTreeToggle<CR>
noremap <silent> <F5> :NERDTreeFind<CR>
" NERDTree filters
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.class$']

" FuzzyFinder shortcut
noremap <silent> <F3> :FufFile<CR>
noremap <Leader>b :FufBuffer<CR>
" FuzzyFinder filter
let g:fuf_file_exclude = '\v\~$|\.pyc$|\.pyo$|\.swp|\.class$'

" Start scrolling when we're 8 lines away from margins
set scrolloff=5 

" command menu
set wildmenu

" always display statusline
set laststatus=2

" smoother changes
set ttyfast

" don't beep
set noerrorbells

" don't blink
set vb t_vb=
autocmd GUIEnter * set visualbell t_vb=

" start Tagbar plugin
nmap <F4> :TagbarToggle<CR>

" console tile
set title

" we want long lines to be long lines
set nowrap

" dont use the first result, but the best match
" display menu even if there is only one match
set completeopt=longest,menuone
" Remember cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" gundo mapping
nnoremap <F6> :GundoToggle<CR>

" background change
" map <F8> :set background=dark<CR>
call togglebg#map("<F8>")

" check out ftdetect direcotry
" for filetype specific settings

