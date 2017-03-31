let g:neomake_open_list = 2
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_jsx_enabled_makers = ['eslint']
let g:neomake_javascript_jsx_flow_enabled_makers = ['eslint', 'flow']
let g:neomake_remove_invalid_entries = 1

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
