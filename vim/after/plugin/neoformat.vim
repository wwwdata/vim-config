autocmd FileType javascript set formatprg=prettier\ --stdin\ --parser\ flow\ --single-quote\ --trailing-comma\ all\ --semi\ false\ --tab-width\ 4\ --print-width\ 120

let g:prettier_enabled = 1

function! g:Prettier_Toggle()
     if g:prettier_enabled
        let g:prettier_enabled = 0
        echo "Prettier was disabled"
    else
        let g:prettier_enabled = 1
        echo "Prettier was enabled"
    endif
endfunction

autocmd BufWritePre *.js if g:prettier_enabled | Neoformat | endif
let g:neoformat_try_formatprg = 1
