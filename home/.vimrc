" basics
call pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible
set encoding=utf-8
set showcmd                     " display incomplete commands

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode
set autoindent                  " always set autoindenting on
set nofoldenable                " I don't like folding

"" Searching
set nohlsearch                  " do not highlight matches
set incsearch                   " incremental searching, highlighting as you type
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set infercase                   " case inferred by default
set showmatch                   " show matching parenthesis

"" Misc
set mouse=a                     " turn on mouse support everywhere
set title                       " use the current file as the title
set visualbell                  " no beeping
set noerrorbells                " really, I mean in
set nobackup                    " explicit backups are not needed
let mapleader=","               " change the leader from \ to ,
set laststatus=2                " always show the statusline

"" Make file completion more like bash
set wildmenu
set wildmode=list:longest

"" Make perl highlighting smarter
let perl_include_pod=1
let perl_extended_vars=1
let perl_want_scope_in_variables=1

"" Font
set guifont=Inconsolata\ for\ Powerline\ Medium

"" Javascript
let g:syntastic_check_on_open=1
let g:syntastic_javascript_checker="jshint"
map <F5> :call JSBeautify()<cr>

"" Powerline
let g:Powerline_symbols='fancy'

"" Solarize color scheme
set background=dark
colorscheme solarized

"" add dictionary to completion sources
set complete-=k complete+=k
