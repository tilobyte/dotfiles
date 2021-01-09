set number relativenumber
set cursorline
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set ignorecase smartcase
set hlsearch
set hidden " better buffer behavior
set mouse=a " enable mouse support
set splitbelow splitright
set scrolloff=3
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " disable newline continuation of comments
" automatically change numbering to absolute when focus is lost
augroup numbertoggle
  autocmd!
  " autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufEnter,FocusGained * set relativenumber
  autocmd BufLeave,FocusLost * set norelativenumber
augroup END


filetype on
filetype plugin on
filetype indent on
syntax enable

" r: insert comment after pressing enter in insert mode
" o: insert comment after pressing o in normal mode
au BufWinEnter * set formatoptions-=o
