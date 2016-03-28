"set ts=4
"set sw=4
"set expandtab
set nowrap

au BufNewFile,BufRead *.py
  \: set tabstop=4
  \: set softtabstop=4
  \: set shiftwidth=4
  \: set textwidth=79
  \: set expandtab
  \: set autoindent
  \: set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
  \: set tabstop=2
  \: set softtabstop=2
  \: set shiftwidth=2

set foldmethod=indent
set foldlevel=99

"shorten window and fold navigation 
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <space> za

"Vundlia starts here

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Bundle 'ivanov/vim-ipython'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

