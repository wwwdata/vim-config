let g:deoplete#auto_complete_delay = 50
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer', 'file']
let g:deoplete#sources['javascript.jsx'] = ['ternjs', 'ultisnips', 'file']
let g:deoplete#sources['javascript.jsx.flow'] = ['ternjs', 'flow', 'file', 'ultisnips']
let g:deoplete#sources.go = ['go']

call deoplete#custom#set('ternjs', 'rank', 50)
call deoplete#custom#set('buffer', 'rank', 60)

call defer#defer('call deoplete#enable()')
