set nocompatible
filetype off

let mapleader=','

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/Vundle.vim'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'craigemery/vim-autotag'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/a.vim'

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
set list
set listchars=tab:»·,trail:·

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg|db|jar|gif|cache)$',
  \ }
let g:ycm_autoclose_preview_window_after_completion = 1

" move by screen lines, not by real lines - great for creative writing
nnoremap j gj
nnoremap k gk
" also in visual mode
vnoremap j gj
vnoremap k gk

nnoremap / /\v
vnoremap / /\v

nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>N :NERDTreeClose<CR>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tj :tablast<CR>
nnoremap tk :tabfirst<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnew<Space>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>

nnoremap <leader>s :%s/\v
nnoremap <leader>f :Ack ""<left>
nnoremap <leader>* yiw:Ack "<c-r>""<cr>

set t_Co=256

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
