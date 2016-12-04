" Load Plugins with vim-plug
call plug#begin('~/.dotfiles/vim/plugged')
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

" Tmux statusline generator
" Plug 'edkolev/tmuxline.vim'

Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'godlygeek/tabular'
Plug 'JamshedVesuna/vim-markdown-preview', { 'for': 'markdown', 'do': 'pip install grip' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'Raimondi/delimitMate'
Plug 'editorconfig/editorconfig-vim', { 'on': [] }
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'

" Syntax highlighting for almost everything
Plug 'sheerun/vim-polyglot'
Plug 'benekastah/neomake'
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips', { 'on': [] }
Plug 'honza/vim-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'tpope/vim-unimpaired'
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript', 'do': 'npm install -g tern' }
Plug 'steelsojka/deoplete-flow', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'on': ['TernDef', 'TernDoc', 'TernDocBrowse', 'TernType', 'TernDefPreview', 'TernDefSplit', 'TernDefTab', 'TernRefs', 'TernRename'] }
Plug 'ruanyl/vim-fixmyjs', { 'on': ['Fixmyjs'] }
Plug 'zchee/deoplete-go', { 'for': 'go', 'do': 'make'}
Plug 'Shougo/echodoc.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-rooter'
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
Plug 'rhysd/vim-grammarous'
Plug 'eugen0329/vim-esearch'
Plug 'kshenoy/vim-signature'
Plug 'terryma/vim-multiple-cursors'
source ~/.dotfiles/vim/plugins/goyo.vim
call plug#end()

let mapleader = ' '
let maplocalleader = ' '
