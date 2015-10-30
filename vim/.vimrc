syntax enable
set hidden 
set history=100
set autoread
set so=7
set ruler
set cmdheight=2
set hlsearch
set incsearch
set showmatch
set noswapfile
set expandtab
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap
set laststatus=2
set cursorline 
set wildmenu
set autoindent
set confirm


if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#tabline#enabled = 1

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'airblade/vim-gitgutter'
Bundle 'Joonty/vim-phpqa.git'
Bundle 'joonty/vdebug.git'
Plugin 'mklabs/grunt.vim'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'crusoexia/vim-monokai'
Plugin 'tpope/vim-fugitive'
Plugin 'DrowsySaturn/VIvid.vim'
Plugin 'sickill/vim-monokai'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
colo monokai
let g:airline_theme='molokai'

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

nnoremap j gj
nnoremap k gk

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
let g:vdebug_options = {}
let g:vdebug_options["path_maps"] = {"/vagrant/src": "/home/bradmiller/Bitbucket Clones/Matrix"}
let g:vdebug_options["port"] = 9000
let g:vdebug_options["server"] = '0.0.0.0'
