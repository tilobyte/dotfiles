" tabs
" nnoremap tt :tabedit<Space>
" nnoremap tn :tabnew<CR>

" use ;; to escape insert mode
:inoremap ;; <Esc>

" better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" use alt+hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" easily capitalize a word
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in normal mobe moves to next buffer
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" retain selection when using >>/<< in visual mode
vnoremap < <gv
vnoremap > >gv

" navigate between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Press backspace to turn off highlighting and clear any message already
" displayed.
:nnoremap <silent> <Backspace> :nohlsearch<Bar>:echo<CR>
" make yank to system clipboard work on wayland
xnoremap "+y y:call system("wl-copy", @")<cr>
" leaders
nnoremap <SPACE> <Nop>
let mapleader=' '
let maplocalleader=','
nmap <leader>f :Files<CR>
