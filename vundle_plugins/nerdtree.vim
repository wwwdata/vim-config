if exists('g:vundle_installing_plugins')
  Plugin 'scrooloose/nerdtree'
  Plugin 'Xuyuanp/nerdtree-git-plugin'
  finish
endif

nmap <F3> :NERDTreeToggle<CR>
nmap <F2> :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 1
let g:NERDTreeMinimalUI = 1

