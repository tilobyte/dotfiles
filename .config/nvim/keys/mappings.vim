" tabs
" nnoremap tt :tabedit<Space>
" nnoremap tn :tabnew<CR>

" commenting. _ represents /
inoremap <c-_> <C-\><C-O>:Comment<CR>
vnoremap <c-_> :Comment<CR>
nnoremap <c-_> :Comment<CR>

" hide coc pop-up
nnoremap <silent> ;; :call coc#util#float_hide()<CR>
inoremap <silent> ;; <C-\><C-O>:call coc#util#float_hide()<CR>
"vnoremap <silent> ;; :call coc#util#float_hide()<CR>

" use ;; to escape insert mode
inoremap vk <Esc>
vnoremap vk <Esc>

" better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" easily capitalize a word
inoremap <c-c> <ESC>viw~
nnoremap <c-c> viw~<Esc>
vnoremap <c-c> ~

" TAB in normal mobe moves to next buffer
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" retain selection when using >>/<< in visual mode
vnoremap < <gv
vnoremap > >gv

" use alt+hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" navigate between windows
nnoremap <c-h> <C-w>h
nnoremap <c-j> <C-w>j
nnoremap <c-k> <C-w>k
nnoremap <c-l> <C-w>l
tnoremap <M-h> <C-\><C-n><C-w>h
tnoremap <M-j> <C-\><C-n><C-w>j
tnoremap <M-k> <C-\><C-n><C-w>k
tnoremap <M-l> <C-\><C-n><C-w>l

" Press backspace to turn off highlighting and clear any message already
" displayed.
:nnoremap <silent> <Backspace> :nohlsearch<Bar>:echo<CR>
" make yank to system clipboard work on wayland
xnoremap "+y y:call system("wl-copy", @")<cr>
