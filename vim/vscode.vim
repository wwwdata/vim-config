" vscode specific settings
xnoremap <silent> K :<C-u>call <SID>hover()<CR>
nnoremap <silent> K :<C-u>call VSCodeNotify('editor.action.showHover')<CR>
nnoremap <silent> ga :<C-u>call VSCodeNotify('keyboard-quickfix.openQuickFix')<CR>
nnoremap <silent> gR :<C-u>call VSCodeNotify('editor.action.rename')<CR>
nnoremap <silent> gr :<C-u>call VSCodeNotify('editor.action.goToReferences')<CR>

