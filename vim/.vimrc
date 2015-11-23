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
let mapleader = ","

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
Bundle 'joonty/vdebug.git'
Plugin 'scrooloose/syntastic'
Plugin 'mklabs/grunt.vim'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'DrowsySaturn/VIvid.vim'
Plugin 'sickill/vim-monokai'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'moll/vim-bbye'
Plugin 'StanAngeloff/php.vim'
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
Plugin 'majutsushi/tagbar'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'othree/html5.vim'
Plugin 'airblade/vim-rooter'
Plugin 'tpope/vim-obsession'
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
set backupdir=~/.vim/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim/tmp
set writebackup
set undodir=~/.vim/tmp
set undofile
let g:vdebug_options = {}
let g:vdebug_options["port"] = 9001
let g:vdebug_options["server"] = '0.0.0.0'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
  \}

"PHP syntax highlighting plugin config
autocmd BufWritePre *.css, *.js, *.blade.php, *.php,  :call <SID>StripTrailingWhitespaces()
function! PhpSyntaxOverride()
hi! def link phpDocTags  phpDefine
hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
autocmd!
autocmd FileType php call PhpSyntaxOverride()
augroup END

"Move lines up and down mappings
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"Configuring linters for php + js
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_checkers = ['jshint']

"Docblockr config
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-d> :call pdv#DocumentWithSnip()<CR>

"More signs for gitgutter!
let g:gitgutter_max_signs = 500

"Ctrl-p mappings for buffer list and recent files
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRU<CR>

"Indent guides config
set ts=4 sw=4 et
let g:indent_guides_start_level = 1
let g_indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
"only show guides in Gvim
au GUIEnter * :IndentGuidesToggle

"Vim-rooter disable auto change directory and add leader key
let g:rooter_manual_only=1
map <silent> <unique> <Leader>r <Plug>RooterChangeToRootDirectory

"Tagbar leader
nmap <Leader>t :TagbarOpenAutoClose<CR> 

"Nerdtree leader
map <Leader>n :NERDTreeToggle<CR>
