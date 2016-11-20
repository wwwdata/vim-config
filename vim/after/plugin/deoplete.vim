let g:deoplete#auto_complete_delay = 0
inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<s-tab>"

" Accept completion with Enter
imap <expr> <buffer> <silent> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
smap <expr> <buffer> <silent> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
call deoplete#enable()
