let g:deoplete#auto_complete_delay = 50
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer', 'file']
let g:deoplete#sources['javascript.jsx'] = ['ternjs', 'ultisnips', 'file']
let g:deoplete#sources['javascript.jsx.flow'] = ['ternjs', 'flow', 'file', 'ultisnips']
let g:deoplete#sources.go = ['go']
let g:deoplete#sources.clojure = ['async_clj', 'buffer']
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

call deoplete#custom#set('async_clj', 'rank', 70)
call deoplete#custom#set('ternjs', 'rank', 60)
call deoplete#custom#set('buffer', 'rank', 50)

call defer#defer('call deoplete#enable()')
