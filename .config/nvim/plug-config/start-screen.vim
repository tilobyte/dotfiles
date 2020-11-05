let g:startify_custom_header = [
            \ "                          88                      ",
            \ "                          \"\"                      ",
            \ "                                                  ",
            \ "8b,dPPYba,   8b       d8  88  88,dPYba,,adPYba,   ",
            \ "88P'   `\"8a  `8b     d8'  88  88P'   \"88\"    \"8a  ",
            \ "88       88   `8b   d8'   88  88      88      88  ",
            \ "88       88    `8b,d8'    88  88      88      88  ",
            \ "88       88      \"8\"      88  88      88      88  ",
  \ ]

let g:startify_session_dir = '~/.config/nvim/sessions'
let g:startify_lists = [
    \ { 'type': 'files',     'header': ['   files']            },
    \ { 'type': 'dir',       'header': ['   current directory '. getcwd()] },
    \ { 'type': 'sessions',     'header': ['   sessions']            },
    \ { 'type': 'bookmarks',     'header': ['   bookmarks']            },
  \ ]
let g:startify_bookmarks = [
    \ { 'n': '~/.config/nvim/init.vim' },
    \ { 's': '~/.config/sway/config' },
    \ { 'z': '~/.zshrc' },
    \ '~/onedrive-cse/courses/Y3/cse 590 dl/homework'
  \ ]
" startify deletes all buffers when loading or closing a session
let g:startify_session_delete_buffers = 1
" change directory to root of git project
let g:startif_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
