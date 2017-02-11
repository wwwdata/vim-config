autocmd BufNewFile,BufRead *.js call DetectFlow()

function! DetectFlow()
  if getline(1) =~# '^\s*\/[/*]\s*@flow\>'
    set ft=javascript.jsx.flow
  end
endfunction
