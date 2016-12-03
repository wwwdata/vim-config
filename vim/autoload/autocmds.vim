function autocmds#idleboot() abort
  " Make sure we automaticlaly call autocmds#idleboot() onlye once.
  augroup StartupIdleboot
    autocmd!
  augroup END

  " Make sure we run deferred tasks exactly once.
  doautocmd User StartupDefer
  autocmd! User StartupDefer
endfunction
