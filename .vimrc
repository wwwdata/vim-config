set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" my own plugins, yay!
Plugin 'scrooloose/nerdtree'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Go official plugins
set rtp+=/opt/local/go/misc/vim
filetype plugin indent on
syntax on

" Go configuration
autocmd FileType go autocmd BufWritePre <buffer> Fmt
let g:SuperTabDefaultCompletionType = "context"

" NerdTree stuff
au VimEnter * NERDTreeToggle
nmap <F3> :NERDTreeToggle<CR>
