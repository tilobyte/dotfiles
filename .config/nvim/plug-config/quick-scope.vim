" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=229 cterm=underline
highlight QuickScopeSecondary guifg='#eF5F70' gui=underline ctermfg=218 cterm=underline
let g:qs_max_chars=150
let g:qs_buftype_blacklist = ['terminal', 'nofile']
