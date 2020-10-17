source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/whichkey.vim

"
" theme
" 
let g:gruvbox_transp_bg=1
set background=dark
colorscheme gruvbox8

"
" nerdtree
"
" autocmd VimEnter * NERDTree
"
" netrw
"
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 17
" " automatically open netrw
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
"   " switch focus to editor on startup instead of netrw
"   autocmd VimEnter * 2wincmd w
" augroup END
