scriptencoding utf-8
set laststatus=2 " keep last status, useful for function signatures
set noshowmode

let g:seoul256_background = 235
colo seoul256

" other interesting themes
"baycomb
"bensday
"blackboard
"codeschool
"darkburn
"darkspectrum
"native
"railscasts

syntax enable
set ts=4
set sw=4
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=LS

set nu
set lazyredraw
set showcmd
set scrolloff=5
set visualbell
set cursorline
set ruler
set backspace=indent,eol,start
set relativenumber
set ignorecase
set smartcase
set nobomb
set listchars=tab:\|\ ,
set diffopt=filler,vertical
set autoread
set completeopt=menuone,preview
let &showbreak = '↳ '
set breakindent
set breakindentopt=sbr

" neovim specifics
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" search highlighting
set incsearch
set showmatch
set hlsearch
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=120

" folding
set foldmethod=indent
set foldlevelstart=1

" vimr
if has("gui_vimr")
  set termguicolors
endif

" italic comment highlight
highlight Comment cterm=italic gui=italic
