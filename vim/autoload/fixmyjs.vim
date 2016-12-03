" standard .eslintrc file is found, but not the yml version
function! fixmyjs#withconfig()
  if !exists('g:fixmyjs_rc_path')
    let ymlPath = getcwd() . '/.eslintrc.yml'
    if filereadable(ymlPath)
      let g:fixmyjs_rc_path = ymlPath
    endif
  endif

  execute 'Fixmyjs'
endfunction
