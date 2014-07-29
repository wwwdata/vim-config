" Go official plugins
filetype plugin indent off
set rtp+=/opt/local/go/misc/vim
filetype plugin indent on
syntax on

" Go configuration
autocmd FileType go autocmd BufWritePre <buffer> Fmt
let g:SuperTabDefaultCompletionType = "context"
let g:syntastic_enable_go_checker = 1
