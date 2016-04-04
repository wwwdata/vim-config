" Load Plugins with vim-plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
Plug 'junegunn/vim-emoji'
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-oblique'
Plug 'junegunn/vim-fnr'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/gv.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'bling/vim-airline'
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 2

Plug 'flazz/vim-colorschemes'

Plug 'Raimondi/delimitMate'
let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1

Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'

" Syntax highlighting for almost everything
Plug 'sheerun/vim-polyglot'

" Plug 'scrooloose/syntastic'
Plug 'benekastah/neomake'
autocmd! BufWritePost * Neomake
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-unimpaired'
Plug 'fatih/vim-go'
" todo configure this
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'Valloric/YouCompleteMe'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'AndrewRadev/splitjoin.vim'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

" }}}
" ============================================================================
" BASIC SETTINGS {{{
" ============================================================================
set encoding=utf-8

" -----------------
" Color
" -----------------
let g:seoul256_background = 234
colo seoul256
set guifont=Monaco\ for\ Powerline:h12
set nu
set background=dark

"baycomb
"bensday
"blackboard
"codeschool
"darkburn
"darkspectrum
"native
"railscasts

" -----------------
" Behaviors
" -----------------
syntax enable
set ts=4
set sw=4
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=LS

let mapleader = ' '
let maplocalleader = ' '
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
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" search highlighting
set incsearch
set showmatch
set hlsearch

" clear search results
nnoremap <leader>sc :noh<cr>

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=120

" Save
inoremap <C-s>     <C-O>:update<cr>
nnoremap <C-s>     :update<cr>

" Quit
inoremap <C-Q>     <esc>:q<cr>
nnoremap <C-Q>     :q<cr>
vnoremap <C-Q>     <esc>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>Q :qa!<cr>

nmap <leader>u :UltiSnipsEdit<CR>

" ----------------- spacemacs like keybindings
" project
nnoremap <silent> <leader>pt :NERDTreeToggle<CR>   " open a horizontal split and switch to it (,h)
nnoremap <silent> <leader>pF :NERDTreeFind<CR>   " open a horizontal split and switch to it (,h)
nnoremap <leader>pf :GitFiles<CR>
nnoremap <leader>p/ :Ag<CR>
nnoremap <leader>pr :History<CR>

" window
nnoremap <leader>wv <C-w>v<C-w>l   " split vertically
nnoremap <leader>wh <C-w>s<C-w>j   " split horizontally

" file
nnoremap <leader>ff :Files<CR>

" buffer
nnoremap <Leader><Tab> :e#<CR> " switch to last buffer
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>b/ :Lines<CR>
nnoremap <leader>bl :BLines<CR>

" toggles
noremap <Leader>ti :set list!<CR>:echo 'Toggled special characters'<CR>" Toggle special characters
noremap <Leader>tl :set relativenumber!<CR>:echo 'Toggled relative line numbers'<CR>" Toggle relative line numbers
noremap <Leader>tm :MediumModeToggle<CR>:echo 'Toggled medium mode'<CR>" Toggle medium mode
noremap <Leader>tH :call ToggleHardMode()<CR>:echo 'Toggled hardmode'<CR>" Toggle hard mode
noremap <Leader>th :HardTimeToggle<CR>:echo 'Toggled hardtime'<CR>" Toggle hard time
noremap <Leader>tg :Goyo<CR>:echo 'Toggled Goyo'<CR>" Toggle goyo time

" git
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gl :Commits<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gd :Gdiff<CR>

" map .spec to coffee filetype
au Bufread,BufNewFile *.spec set filetype=coffee

" easy-align
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" SYNTASTIC
function s:find_jshintrc(dir)
  let l:found = globpath(a:dir, '.jshintrc')
  if filereadable(l:found)
    return l:found
  endif

  let l:parent = fnamemodify(a:dir, ':h')
  if l:parent != a:dir
    return s:find_jshintrc(l:parent)
  endif

  return "~/.jshintrc"
endfunction

function UpdateJsHintConf()
  let l:dir = expand('%:p:h')
  let l:jshintrc = s:find_jshintrc(l:dir)
  let g:syntastic_javascript_jshint_args = '--config ' . l:jshintrc
endfunction

au BufEnter * call UpdateJsHintConf()

let g:syntastic_enable_go_checker = 1
let g:syntastic_javascript_checkers = ['jshint', 'eslint']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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

" GO
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>t <Plug>(go-test)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_fmt_command = "goimports"

" YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_use_ultisnips_completer = 1

" NERDTree
nmap <F3> :NERDTreeToggle<CR>
nmap <F2> :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 1
let g:NERDTreeMinimalUI = 1

"let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
