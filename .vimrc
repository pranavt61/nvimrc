"Neobundle set up
if 0 | endif

if &compatible
	set nocompatible
endif

set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

"All plugins here
NeoBundleFetch 'Shougo/neobundle.vim'

"colorshemes
NeoBundle 'altercation/vim-colors-solarized.git'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'jacoborus/tender.vim'
NeoBundle 'dracula/vim'

"Easy Motion
NeoBundle 'https://github.com/easymotion/vim-easymotion'

"NERDTree
NeoBundle 'https://github.com/scrooloose/nerdtree.git'

"lightline
NeoBundle 'itchyny/lightline.vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

"Vim Settings
syntax on
set hidden
set wildmenu
set showcmd
set hlsearch
set autoindent
set ruler
set laststatus=2
set confirm
set visualbell
set number
set relativenumber
set tabstop=4
set smarttab
set shiftwidth=4
let g:redhash256= 1
set scrolloff=20
set background=dark
color dracula

command NE NERDTree

let g:tender_lightline = 1

"lightline settings
let g:lightline = {
      \ 'colorscheme': 'Dracula',
      \ 'component': {
      \ 	'readonly': '%{&readonly?"X":""}',
	  \		'modified': '%{&filetype=="help"?"":&modified?"[+]":&modifiable?"":"-"}'
      \ },
      \ }
