if exists('g:vundle_installing_plugins')
  Plugin 'Valloric/YouCompleteMe'
  finish
endif

let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_use_ultisnips_completer = 1
