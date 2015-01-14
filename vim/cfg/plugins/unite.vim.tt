" use fuzzy matcher for filtering elements
call unite#filters#matcher_default#use(['matcher_fuzzy'])


" hotkeys {{{

" <Leader>s: perform file search, like control-p
nnoremap <Leader>uns :<C-u>Unite -buffer-name=files -start-insert file_rec/async:!<CR>

" <Leader>g: start a grep search from the current directory
nnoremap <Leader>ung :<C-u>Unite -buffer-name=grep grep:.<CR>

" <Leader>y: open yank history
let g:unite_source_history_yank_enable = 1
nnoremap <Leader>uny :<C-u>Unite -buffer-name=yank_history history/yank<CR>

" <Leader>b: buffer switching
nnoremap <Leader>unb :<C-u>Unite -quick-match -buffer-name=buffers buffer<CR>

" custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " <C->movement: navigate in the unite buffer
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

" }}}

