let g:cm_sources_override = {
    \ 'cm-tern': {'priority': 10,  'scopes': ['javascript', 'jsx', 'javascript.jsx', 'javascript.jsx.flow']},
    \ 'flow': {'priority': 1, 'scopes': ['javascript', 'jsx', 'javascript.jsx', 'javascript.jsx.flow']},
    \ 'buffer': {'priority': 100}
    \ }
inoremap <expr><CR> (pumvisible()?(empty(v:completed_item)?"\<C-n>\<C-y>":"\<C-y>"):"\<CR>")
imap <expr> <Plug>(expand_or_nl) (cm#completed_is_snippet() ? "\<C-U>":"\<CR>")
set shortmess+=c

