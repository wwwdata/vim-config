autocmd FileType javascript set formatprg=prettier\ --stdin\ --parser\ flow\ --single-quote\ --trailing-comma\ all\ --semi\ false\ --tab-width\ 4
autocmd BufWritePre *.js Neoformat
let g:neoformat_try_formatprg = 1
