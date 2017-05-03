autocmd! BufWritePost,BufReadPost * Neomake

" automatically close preview window when done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" resize windows when terminal was resized
autocmd VimResized * execute "normal! \<c-w>="

" Wait until idle to run additional "boot" commands.
augroup StartupIdleboot
  autocmd!
  if has('vim_starting')
    autocmd CursorHold,CursorHoldI * call autocmds#idleboot()
  endif
augroup END

augroup my_neomake_signs
  au!
  autocmd! ColorScheme *
    hi link NeomakeErrorSign GitGutterDelete
    hi link NeomakeError NeomakeWarning
    hi link NeomakeWarningSign NeomakeMessageSign
    hi link NeomakeWarning NeomakeMessage
augroup END

function! SearchFlowBin()
  let local_flow = finddir('node_modules', '.;') . '/.bin/flow'
  if matchstr(local_flow, "^\/\\w") == ''
      let local_flow= getcwd() . "/" . local_flow
  endif
  if executable(local_flow)
    let g:flow#flowpath = local_flow
    let g:deoplete#sources#flow#flow_bin = local_flow
    let g:neomake_flow_flow_exe = local_flow
  endif
endfunction

autocmd FileType javascript.jsx.flow call SearchFlowBin()

function! SearchEslintBin()
  let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
  if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint= getcwd() . "/" . local_eslint
  endif
  if executable(local_eslint)
    let g:neomake_javascript_eslint_exe = local_eslint
  endif
endfunction

autocmd FileType javascript call SearchEslintBin()

" Automatic file change detection
augroup AutoSwap
  autocmd!
  autocmd SwapExists *  call AS_HandleSwapfile(expand('<afile>:p'), v:swapname)
augroup END

function! AS_HandleSwapfile (filename, swapname)
  " if swapfile is older than file itself, just get rid of it
  if getftime(v:swapname) < getftime(a:filename)
    call delete(v:swapname)
    let v:swapchoice = 'e'
  endif
endfunction
autocmd CursorHold,BufWritePost,BufReadPost,BufLeave *
      \ if isdirectory(expand("<amatch>:h")) | let &swapfile = &modified | endif

augroup checktime
  au!
  if !has("gui_running")
    "silent! necessary otherwise throws errors when using command
    "line window.
    autocmd BufEnter,CursorHold,CursorHoldI,CursorMoved,CursorMovedI,FocusGained,BufEnter,FocusLost,WinLeave * checktime
  endif
augroup END
