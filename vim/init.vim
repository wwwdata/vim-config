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
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim', { 'on': [] }
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }

" Plug 'benekastah/neomake', { 'do': 'npm install -g flow-vim-quickfix' }
Plug 'w0rp/ale'
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips', { 'on': [] }
Plug 'honza/vim-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'tpope/vim-unimpaired'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript', 'do': 'npm install -g tern' }
"Plug 'steelsojka/deoplete-flow', { 'for': 'javascript' }
Plug 'wokalski/autocomplete-flow', { 'for': 'javascript' }
Plug 'wwwdata/vim-flow', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'on': ['TernDef', 'TernDoc', 'TernDocBrowse', 'TernType', 'TernDefPreview', 'TernDefSplit', 'TernDefTab', 'TernRefs', 'TernRename'] }
Plug 'zchee/deoplete-go', { 'for': 'go', 'do': 'make'}
Plug 'Shougo/echodoc.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-rooter'
Plug 'rhysd/vim-grammarous'
Plug 'eugen0329/vim-esearch'
Plug 'kshenoy/vim-signature'
Plug 'terryma/vim-multiple-cursors'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-projectionist'
Plug 'retorillo/istanbul.vim', { 'on': ['IstanbulClear', 'IstanbulUpdate', 'IstanbulMode'] }
Plug 'sbdchd/neoformat', { 'do': 'npm install -g prettier' }

" Clojure stuff
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-classpath', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }
Plug 'fwolanski/vim-clojure-conceal', { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
Plug 'guns/vim-sexp', { 'for': 'clojure' }
Plug 'neovim/node-host', { 'do': 'npm install', 'tag': 'v0.0.1' }
Plug 'clojure-vim/nvim-parinfer.js', { 'for': 'clojure', 'do': ':UpdateRemotePlugins' }
Plug 'clojure-vim/async-clj-omni', { 'for': 'clojure' }
source ~/.dotfiles/vim/plugins/goyo.vim

" PHP stuff, delete garbage later again
Plug 'lumiliet/vim-twig', { 'for': 'twig' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
call plug#end()

let mapleader = ' '
let maplocalleader = ' '
