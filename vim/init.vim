" Load Plugins with vim-plug
call plug#begin('~/.dotfiles/vim/plugged')
if !exists('g:vscode')

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
  Plug 'junegunn/gv.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'SirVer/Ultisnips'
  Plug 'natebosch/dartlang-snippets'
  Plug 'kshenoy/vim-signature'
  Plug 'vimwiki/vimwiki'
  Plug 'udalov/kotlin-vim'
  Plug 'tpope/vim-projectionist'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'Shougo/denite.nvim'
  Plug 'Shougo/echodoc.vim'
  Plug 'prettier/vim-prettier', {
        \ 'do': 'yarn install',
        \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
  Plug 'leafgarland/typescript-vim'
  Plug 'rhysd/vim-grammarous'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

  source ~/.dotfiles/vim/plug/airline.vim

  " Language
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'fatih/vim-go', {'tag': '*', 'for': 'go', 'do': ':GoUpdateBinaries'}
  let dart_format_on_save = 1
  let dart_style_guide = 2
endif

" Shared plugins with VSCode
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'

call plug#end()

source ~/.dotfiles/vim/settings.vim
source ~/.dotfiles/vim/mappings.vim

if !exists('g:vscode')
  source ~/.dotfiles/vim/plug/autocompletion.vim
  source ~/.dotfiles/vim/plug/prettier.vim
  source ~/.dotfiles/vim/plug/vimwiki.vim
  source ~/.dotfiles/vim/plug/grammarous.vim
endif

if exists('g:vscode')
  source ~/.dotfiles/vim/vscode.vim
endif
