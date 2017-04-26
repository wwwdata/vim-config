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
