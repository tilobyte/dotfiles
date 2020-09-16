set number
" syntax on
set cursorline
hi CursorLine cterm=NONE ctermbg=16  guibg=darkred guifg=white 
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" attempt to fix starting in replace mode
set t_u7=

" color scheme
packadd! dracula
syntax enable
colorscheme dracula
