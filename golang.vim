" Go official plugins
filetype plugin indent off
set rtp+=/opt/local/go/misc/vim
" Go lint stuff
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
filetype plugin indent on
syntax on

" Go configuration
autocmd FileType go autocmd BufWritePre <buffer> Fmt
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow
