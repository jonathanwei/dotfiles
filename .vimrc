set nocompatible
filetype off

set list

let mapleader=','

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/Vundle.vim'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'craigemery/vim-autotag'

call vundle#end()

filetype plugin indent on

syntax on
colorscheme molokai
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
let c_space_errors=1
set incsearch
set smartcase
set ignorecase
set cursorline
set cursorcolumn
set formatoptions=l
set backspace=indent,eol,start
set lbr
set number
set tags=./tags;
" move by screen lines, not by real lines - great for creative writing
nnoremap j gj
nnoremap k gk
" also in visual mode
vnoremap j gj
vnoremap k gk

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
