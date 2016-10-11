Plug 'junegunn/goyo.vim', { 'on' : 'Goyo' }
Plug 'junegunn/limelight.vim', { 'on' : 'Limelight' }

function! s:goyo_enter()
  silent !tmux set status off
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
