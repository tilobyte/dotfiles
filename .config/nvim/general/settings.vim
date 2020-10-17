set number
set cursorline
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set ignorecase
set smartcase
set hlsearch
set hidden
set mouse=a
set splitbelow
set splitright
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " disable newline continuation of comments

filetype on
filetype plugin on
filetype indent on
syntax enable
