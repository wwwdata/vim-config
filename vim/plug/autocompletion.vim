" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" note that you must keep `noinsert` in completeopt, you must not use
" `longest`. The others are optional. Read `:help completeopt` for
" more info
set completeopt=noinsert,menuone,noselect,preview
set shortmess+=c
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

au TextChangedI * call ncm2#auto_trigger()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
imap <c-space> <Plug>(ncm2_manual_trigger)

" c-j c-k for moving in snippet
imap <c-u> <Plug>(ultisnips_expand)
" enter for snippet expand
inoremap <expr> <CR> (pumvisible() ? ncm2_ultisnips#expand_or("\<c-y>") : "\<CR>")
let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0
let g:UltiSnipsSnippetsDir="~/.dotfiles/vim/ultisnips"

let g:LanguageClient_serverCommands = {
    \ 'dart': ['dart_language_server'],
    \ }


let g:LanguageClient_rootMarkers = {
      \ 'dart': ['pubspec.yaml'],
      \ }
