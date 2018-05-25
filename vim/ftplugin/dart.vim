nmap gd :call LanguageClient_textDocument_definition()<CR>
nmap <leader>lt :call LanguageClient_textDocument_hover()<CR>
nmap <leader>lr :call LanguageClient_textDocument_rename()<CR>
nmap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
nmap <leader>ll :call LanguageClient_textDocument_references()<CR>

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {}
let g:LanguageClient_serverCommands['dart'] = ['dart_language_server']
autocmd BufWritePost * :DartFmt
