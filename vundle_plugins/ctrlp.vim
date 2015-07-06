if exists('g:vundle_installing_plugins')
  Plugin 'kien/ctrlp.vim'
  set wildignore+=*/node_modules/*
  set wildignore+=*/bower_components/*
  finish
endif

set modifiable
