set number
set cursorline
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set ignorecase
set smartcase

" attempt to fix starting in replace mode
set t_u7=

" automatically install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim',{'as': 'dracula'}
call plug#end()

