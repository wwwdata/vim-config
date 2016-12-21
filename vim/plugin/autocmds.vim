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
