if exists('g:vundle_installing_plugins')
  Plugin 'ctrlpvim/ctrlp.vim'
  set wildignore+=*/node_modules/*
  set wildignore+=*/bower_components/*
  finish
endif

set modifiable

nnoremap <C-B> :CtrlPBuffer<CR>
