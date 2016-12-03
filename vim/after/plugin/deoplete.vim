let g:deoplete#auto_complete_delay = 0
inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<s-tab>"

let g:deoplete#ignore_sources = ['tag', 'file', 'omni']

" auto complete after backspace again
inoremap <expr><C-n> pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" no new line after hitting enter
inoremap <silent><expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"

" Accept completion with Enter
imap <expr> <buffer> <silent> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
smap <expr> <buffer> <silent> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
call defer#defer('call deoplete#enable()')
