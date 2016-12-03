" also load lazily when idle
function! LoadEditorConfig()
  call plug#load('editorconfig-vim')
  execute 'EditorConfigReload'
endfunction

call defer#defer('call LoadEditorConfig()')
