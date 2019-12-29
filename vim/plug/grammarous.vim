let g:grammarous#languagetool_cmd = 'languagetool'
let g:grammarous#default_comments_only_filetypes = {
      \ '*' : 1, 'help' : 0, 'markdown' : 0,
      \ }
let g:grammarous#use_vim_spelllang = 1
let g:grammarous#enable_spell_check = 1
let g:grammarous#hooks = {}
function! g:grammarous#hooks.on_check(errs) abort
    nmap <buffer><C-n> <Plug>(grammarous-move-to-next-error)
    nmap <buffer><C-p> <Plug>(grammarous-move-to-previous-error)
endfunction

function! g:grammarous#hooks.on_reset(errs) abort
    nunmap <buffer><C-n>
    nunmap <buffer><C-p>
endfunction

nnoremap <leader>sc :GrammarousCheck<CR>
nmap <leader>sr <Plug>(grammarous-reset)
nmap <leader>sf <plug>(grammarous-fixit)
nmap <leader>sF <plug>(grammarous-fixall)
nmap <leader>si <plug>(grammarous-open-info-window)
