let g:neomake_open_list = 2
let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']

let g:neomake_error_sign = {'text': "\uF057", 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {
      \   'text': "\uF056",
      \   'texthl': 'NeomakeWarningSign',
      \ }
let g:neomake_message_sign = {
      \   'text': "\uF09A",
      \   'texthl': 'NeomakeMessageSign',
      \ }
let g:neomake_info_sign = {'text': "\uF05A", 'texthl': 'NeomakeInfoSign'}
