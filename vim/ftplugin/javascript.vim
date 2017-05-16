let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
" enable jsx everywhere
let g:jsx_ext_required = 0

nmap gd :TernDef<CR>
nmap <leader>td :TernDoc<CR>
nmap <leader>tb :TernDocBrowse<CR>
nmap <leader>tt :TernType<CR>
nmap <leader>tpd :TernDefPreview<CR>
nmap <leader>tsd :TernDefSplit<CR>
nmap <leader>ttd :TernDefTab<CR>
nmap <leader>tr :TernRefs<CR>
nmap <leader>tR :TernRename<CR>
" coverage
nmap <leader>cm :IstanbulMode<CR>
nmap <leader>cu :IstanbulUpdate<CR>
nmap <leader>cc :IstanbulClear<CR>
" fix javascript
nnoremap <Leader>fj :Fixmyjsconfig<CR>
nnoremap <Leader>pp :call Prettier_Toggle()<CR>

" imap <c-x><c-j> call fzf#vim#complete#path("ag -l -g ''") 
inoremap <expr> <c-x><c-j> CompleteJavascriptPath()
func! CompleteJavascriptPath()
    " call fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print \| sed '1d;s:^..::'")
    call fzf#vim#complete#path("ag -l -g ''  \| sed 's/.js//g'")
    return ""
  endfu
