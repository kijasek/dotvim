" Turn on python intellisense 
au FileType python set omnifunc=pythoncomplete#Complete

" ctags configuration
set tags=~/.vim/tags/pyevn,~/.vim/tags/workspace

" refresh tags for current VIRTUALENV
map <F10> :!ctags --languages=python --tag-relative=yes -R -f ~/.vim/tags/pyenv `python -c "from distutils.sysconfig import get_python_lib; print get_python_lib()"`<CR>

" refresh tags for project dir
map <F12> :!ctags --languages=python --tag-relative=yes -R -f ~/.vim/tags/workspace .<CR>

" my virtualenvs direcotory
let g:virtualenv_directory = '~/pythons/'
