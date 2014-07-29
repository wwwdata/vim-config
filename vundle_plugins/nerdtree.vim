if exists('g:vundle_installing_plugins')
  Plugin 'Xuyuanp/git-nerdtree'
  finish
endif

nmap <F3> :NERDTreeToggle<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 1
let g:NERDTreeMinimalUI = 1

