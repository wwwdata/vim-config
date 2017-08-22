let g:prettier_enabled = 0

function! SearchPrettier()
  let g:local_prettier = finddir('node_modules', '.;') . '/.bin/prettier'
  if matchstr(g:local_prettier, "^\/\\w") == ''
    let g:local_prettier= getcwd() . "/" . g:local_prettier
  endif
  if executable(g:local_prettier)
    let configOptions = findfile('.prettier-config')
    if (filereadable(configOptions))
      let g:prettier_options = readfile(configOptions)
      autocmd FileType javascript let &formatprg=g:local_prettier . ' --stdin ' . g:prettier_options[0]
    else
      autocmd FileType javascript let &formatprg=g:local_prettier . ' --stdin --parser flow --single-quote --trailing-comma all --semi false --tab-width 4 --print-width 120'
    endif
    let g:prettier_enabled = 1
  endif
endfunction


function! g:Prettier_Toggle()
     if g:prettier_enabled
        let g:prettier_enabled = 0
        echo "Prettier was disabled"
    else
        let g:prettier_enabled = 1
        echo "Prettier was enabled"
    endif
endfunction

autocmd FileType javascript call SearchPrettier()
autocmd BufWritePre *.js if g:prettier_enabled | Neoformat | endif
let g:neoformat_try_formatprg=1
let g:neoformat_only_msg_on_error=1
