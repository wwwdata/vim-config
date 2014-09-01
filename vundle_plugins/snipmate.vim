if exists('g:vundle_installing_plugins')
  Bundle "MarcWeber/vim-addon-mw-utils"
  Bundle "tomtom/tlib_vim"
  Bundle "garbas/vim-snipmate"
  finish
endif

:imap <C-J> <Plug>snipMateNextOrTrigger
:smap <C-J> <Plug>snipMateNextOrTrigger
