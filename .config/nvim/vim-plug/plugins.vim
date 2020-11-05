call plug#begin()
    Plug 'lifepillar/vim-gruvbox8'
    Plug 'vim-airline/vim-airline'
    Plug 'liuchengxu/vim-which-key'
    Plug 'tpope/vim-commentary'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'mhinz/vim-startify'
    Plug 'kshenoy/vim-signature'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'kevinhwang91/rnvimr'
    Plug 'mbbill/undotree'
    Plug 'unblevable/quick-scope'
    Plug 'jremmen/vim-ripgrep'
    " add command to close buffer w/o closing window
    Plug 'moll/vim-bbye' 
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
