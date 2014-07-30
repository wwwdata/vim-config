if exists('g:vundle_installing_plugins')
  Plugin 'scrooloose/syntastic'
  finish
endif

function s:find_jshintrc(dir)
  let l:found = globpath(a:dir, '.jshintrc')
  if filereadable(l:found)
    return l:found
  endif

  let l:parent = fnamemodify(a:dir, ':h')
  if l:parent != a:dir
    return s:find_jshintrc(l:parent)
  endif

  return "~/.jshintrc"
endfunction

function UpdateJsHintConf()
  let l:dir = expand('%:p:h')
  let l:jshintrc = s:find_jshintrc(l:dir)
  let g:syntastic_javascript_jshint_args = '--config ' . l:jshintrc
endfunction

au BufEnter * call UpdateJsHintConf()

let g:syntastic_enable_go_checker = 1
let g:syntastic_javascript_checkers = ['jshint']
