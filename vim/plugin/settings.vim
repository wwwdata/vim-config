scriptencoding utf-8
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
set laststatus=2                    " keep last status, useful for function signatures
set noshowmode                      " don't display insert/normal/visual mode, we have a status line for that
set ts=4                            " number of spaces for a tab
set sw=4                            " number of spaces for auto indent
set nu                              " print line numbers
set lazyredraw                      " redraw after executing macro
set noshowcmd                       " no extra info at end of command line
set scrolloff=5                     " scroll 5 lines before start/end of viewport
set visualbell                      " flash instead of beep
set cursorline                      " highlight current line
set ruler                           " show cursor position in status line, is replaced by airline anyway
set backspace=indent,eol,start      " allow normal backspace usage in insert mode
set relativenumber                  " relative line numbers
set ignorecase                      " when searching lower case, also find upper case
set smartcase                       " turn of lower case results when explicitly searching for upper case
set diffopt=filler,vertical         " start diff in vertical split and show filler lines
set autoread                        " automatically read file when changed, this currently only triggers when vim has focus
set completeopt=menuone,preview     " show auto complete also of ronly one match and open preview window
set complete+=kspell
let &showbreak = '↳ '               " arrow when text breaks into next line
set breakindent                     " indent wrapped lines to match start
set breakindentopt=sbr              " display showbreak before applying additional indent
set list                            " show whitespace
set listchars=nbsp:⦸                " CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
set listchars+=tab:▷┅               " WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7)
                                    " + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
set listchars+=extends:»            " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
set listchars+=precedes:«           " LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
set listchars+=trail:•              " BULLET (U+2022, UTF-8: E2 80 A2)
set nojoinspaces                    " don't autoinsert two spaces after '.', '?', '!' for join command
set hidden                          " allow buffer hiding without save

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " neovim can display a nice cursor line in insert mode that blinks
set inccommand=split                " nice preview of search and replace actions

set showmatch                       " show matching brackets
set hlsearch                        " highlight all search matches
set textwidth=79                    " max width
set formatoptions+=j                " remove comment characters when joining lines
set formatoptions+=n                " indent numbered lists
set colorcolumn=120                 " display a column after 120

set foldmethod=indent               " fold with indentation method
set foldlevelstart=99               " no initial folding

set updatetime=1000                 " when to execute CursorHold

if has("gui_vimr")
  set termguicolors                 " use gui background/foreground
endif

" italic comment highlight
highlight Comment cterm=italic gui=italic
