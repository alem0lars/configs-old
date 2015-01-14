" options {{{

" use overlay
let g:choosewin_overlay_enable          = 1

" overlay font broke on mutibyte buffer?
let g:choosewin_overlay_clear_multibyte = 1

" }}}


" hotkeys {{{

" <Leader>cw: invoke choosewin
nnoremap <Leader>cw :<C-u>ChooseWin<CR>

" }}}
