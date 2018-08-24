" clear search results
nnoremap <leader>sc :noh<cr>

" reload configuration
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>

" toggle fold
" nnoremap <Tab> za

" easy-align
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" quickfix mapping, nextfile jumps
nnoremap <silent> <Up> :cprevious<CR>
nnoremap <silent> <Down> :cnext<CR>
nnoremap <silent> <Left> :cpfile<CR>
nnoremap <silent> <Right> :cnfile<CR>

" Save
inoremap <C-s> <C-O>:update<cr>
nnoremap <C-s> :update<cr>

" Quit
inoremap <C-Q> <esc>:q<cr>
nnoremap <C-Q> :q<cr>
vnoremap <C-Q> <esc>:q<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>Q :qa!<cr>

nmap <leader>s :UltiSnipsEdit<CR>

nnoremap <leader>rc :so ~/.config/nvim/init.vim<CR>

" project
nnoremap <silent> <leader>pt :NERDTreeToggle<CR>   " open a horizontal split and switch to it (,h)
nnoremap <silent> <leader>pF :NERDTreeFind<CR>   " open a horizontal split and switch to it (,h)
nnoremap <leader>pf :GitFiles<CR>
nnoremap <leader>p/ :Ag 
nnoremap <leader>pr :History<CR>
nnoremap <leader>ps :Snippets<CR>
nnoremap <leader>pc :Commands<CR>

" window
nnoremap <leader>wv <C-w>v<C-w>l   " split vertically
nnoremap <leader>wh <C-w>s<C-w>j   " split horizontally

" file
nnoremap <leader>ff :Files<CR>
nnoremap <leader>ft :TagbarToggle<CR>

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
noremap <Leader>tse :set spell! spelllang=en<CR>:echo 'Toggled en spell check'<CR>" Toggle en spell check
noremap <Leader>tsd :set spell! spelllang=de<CR>:echo 'Toggled de spell check'<CR>" Toggle de spell check
noremap <Leader>tg :Goyo<CR>:echo 'Toggled Goyo'<CR>" Toggle goyo time

" git
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gl :GV<CR>
nnoremap <leader>gm :Gmerge<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gvc :GV!<CR>
nnoremap <leader>gvq :GV?<CR>
nnoremap <leader>gw :Gwrite<CR>

" Terminal stuff
:tnoremap <Esc> <C-\><C-n>

" create jumplist entry for j and k jumps with more than 1 line
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'

" gui rebindings for auto pairs
imap <D-e> <M-e>
imap <D-p> <M-p>
imap <D-m> <M-m>
imap <D-e> <M-e>
imap <D-b> <M-b>

nmap <C-Space> <Plug>(ncm2_manual_trigger)
imap <C-Space> <Plug>(ncm2_manual_trigger)

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <C-]> :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> gR :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> gI :call LanguageClient#textDocument_implementation()<CR>
nnoremap <silent> gr :call LanguageClient#textDocument_references()<CR>
nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
nnoremap <leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>
nnoremap <leader>lS :call LanguageClient#workspace_symbol()<CR>
nnoremap <silent> ga :call LanguageClient#textDocument_codeAction()<CR>
nnoremap <silent> go :call LanguageClient#textDocument_documentSymbol()<CR>
