set nocompatible              " be iMproved, required
filetype off                  " required

"set ts=4
"set sw=4
"set expandtab

set encoding=utf-8
set nowrap
set pastetoggle=<F2>

syntax on

au BufNewFile,BufRead *.py 
\  set tabstop=4 |
\  set softtabstop=4 |
\  set shiftwidth=4 |
\  set textwidth=79 |
\  set expandtab |
\  set autoindent |
\  set fileformat=unix |

au BufNewFile,BufRead *.js, *.html, *.css
\  set tabstop=2 |
\  set softtabstop=2 |
\  set shiftwidth=2 |

au BufNewFile,BufRead *.ps1
\  set encoding=latin1 |
\  set filetype=ps1 |
\  set syntax=ps1 |
\  set tabstop=4 |
\  set softtabstop=4 |
\  set shiftwidth=4 |
\  set expandtab |
\  set autoindent |

set foldmethod=indent
set foldlevel=99

"shorten window and fold navigation 
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <space> za

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'PProvost/vim-ps1'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
