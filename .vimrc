set nocompatible
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
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
