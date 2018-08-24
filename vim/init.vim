" Load Plugins with vim-plug
call plug#begin('~/.dotfiles/vim/plugged')

" Colorscheme
Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'

" General
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'SirVer/Ultisnips'
Plug 'natebosch/dartlang-snippets'
Plug 'kshenoy/vim-signature'
Plug 'terryma/vim-multiple-cursors'
Plug 'vimwiki/vimwiki'

" auto completion
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'ncm2/ncm2-ultisnips'
Plug 'Shougo/echodoc.vim'

source ~/.dotfiles/vim/plug/airline.vim

" Language
Plug 'dart-lang/dart-vim-plugin'
Plug 'fatih/vim-go', {'tag': '*', 'for': 'go', 'do': ':GoUpdateBinaries'}
let dart_format_on_save = 1
let dart_style_guide = 2

call plug#end()

source ~/.dotfiles/vim/settings.vim
source ~/.dotfiles/vim/mappings.vim
source ~/.dotfiles/vim/plug/autocompletion.vim
