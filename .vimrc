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
Plugin 'Xuyuanp/git-nerdtree'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'Townk/vim-autoclose'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-startify'
Plugin 'elzr/vim-json'
Plugin 'evanmiller/nginx-vim-syntax'

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
let g:syntastic_enable_go_checker = 1

" NerdTree stuff
nmap <F3> :NERDTreeToggle<CR>

" Tagbar
nmap <F4> :TagbarToggle<CR>
let g:tagbar_width = 75
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1

" Fugitive
set modifiable

" UTF-8 Encoding stuff
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

" Other stuff
" set guifont=Source\ Code\ Pro\ for\ Powerline:h16 " Set default font
set guifont=Monaco\ for\ Powerline:h14
set nu
set background=dark
colorscheme zenburn
