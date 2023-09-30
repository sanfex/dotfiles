let mapleader=" "
set number relativenumber
set clipboard=unnamedplus
set mouse=a
set showmatch
set nohlsearch
set ignorecase
set incsearch
set smartindent
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set encoding=utf-8
set fileencoding=utf-8
set splitbelow
set splitright
set background=dark
syntax enable
filetype on
filetype indent on
filetype plugin on

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Automatically deletes all trailing whitespace and newlines at end of file on save. & reset cursor position
autocmd BufWritePre * let currPos = getpos(".")
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e
autocmd BufWritePre * cal cursor(currPos[1], currPos[2])
