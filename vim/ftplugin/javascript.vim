let g:javascript_plugin_jsdoc = 1
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
" fix javascript
nnoremap <Leader>fj :Fixmyjs<CR>
