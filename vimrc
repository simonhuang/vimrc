"Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Core
Plugin 'Shougo/neocomplete.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'


call vundle#end()
filetype plugin indent on


"General
set autoindent
set backspace=indent,eol,start
set colorcolumn=80
set cursorline
set expandtab smarttab shiftround nojoinspaces
set hlsearch
set ignorecase
set incsearch
set number
set showmatch
set smartcase
set tabstop=4 shiftwidth=4 softtabstop=4

"Solarized
let g:solarized_termcolors=256
"syntax enable
"set background=light
"colorscheme solarized

"Airline
set laststatus=2
set t_Co=256
let g:airline_theme='solarized'
"let g:airline_powerline_fonts = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'


"Keymappings
let mapleader=';'
noremap <Leader>a :Ack <cword><cr>
nmap tn :tabnew<CR>
nmap tc :tabc<CR>
nnoremap <Space> :nohlsearch<CR>
set pastetoggle=<Leader>p
set whichwrap+=<,>,h,l,[,]
nnoremap H gT
nnoremap L gt


"CtrlP speedup
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'


"NERDTree
nmap <Leader>n :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

set runtimepath^=~/.vim/bundle/ctrlp.vim
