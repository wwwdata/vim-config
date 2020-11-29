" Load Plugins with vim-plug
call plug#begin('~/.dotfiles/vim/plugged')

" Shared plugins with VSCode
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'

if exists('g:vscode')
  source ~/.dotfiles/vim/vscode.vim
else
  " Colorscheme
  Plug 'sainnhe/gruvbox-material'
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
  Plug 'itchyny/lightline.vim'
  Plug 'Shougo/denite.nvim'
  Plug 'Shougo/echodoc.vim'
  Plug 'prettier/vim-prettier', {
        \ 'do': 'yarn install',
        \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
  Plug 'leafgarland/typescript-vim'
  Plug 'rhysd/vim-grammarous'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

  " Language
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'fatih/vim-go', {'tag': '*', 'for': 'go', 'do': ':GoUpdateBinaries'}
  Plug 'nvim-treesitter/nvim-treesitter'
  let dart_format_on_save = 1
  let dart_style_guide = 2
endif

call plug#end()

if !exists('g:vscode')
  source ~/.dotfiles/vim/settings.vim
  source ~/.dotfiles/vim/mappings.vim
  source ~/.dotfiles/vim/plug/autocompletion.vim
  source ~/.dotfiles/vim/plug/prettier.vim
  source ~/.dotfiles/vim/plug/vimwiki.vim
  source ~/.dotfiles/vim/plug/grammarous.vim
  source ~/.dotfiles/vim/plug/treesitter.vim
endif
