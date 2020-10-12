set number
set cursorline
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set ignorecase
set smartcase
set hlsearch
filetype on
filetype plugin on
filetype indent on
" Press Space to turn off highlighting and clear any message already
" displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" make yank to system clipboard work on wayland
xnoremap "+y y:call system("wl-copy", @")<cr>

" vim-plug
call plug#begin()
"Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" theme
colorscheme gruvbox
set background=dark

" coc
" some servers have issues with backup files, uncommenting below should fix
" set nobackup
" set nowritebackup
