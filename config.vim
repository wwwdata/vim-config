" -----------------
" UTF-8 Encoding Stuff
" -----------------
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

" -----------------
" Color
" -----------------
set guifont=Monaco\ for\ Powerline:h12
set nu
set background=dark
colorscheme zenburn

" -----------------
" Behaviors
" -----------------
syntax enable
