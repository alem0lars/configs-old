" prompt {{{

let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt = '$ '

" }}}


" zsh integration {{{

" use zsh history
let g:vimshell_external_history_path = expand('~/.zsh-history')

" }}}


" urxvt integration {{{

let g:vimshell_use_terminal_command = 'urxvt -e'

" }}}


" history, scrollback {{{

let g:vimshell_temporary_directory = expand('~/.vim_shell')

" maximum number of lines that can be scrolled back
let g:vimshell_scrollback_limit = 2048

" maximum number of commands to keep in history
let g:vimshell_max_command_history = 1024

" }}}


" completion {{{

let g:vimshell_enable_smart_case = 1

" }}}


" hotkeys {{{

nnoremap <Leader>sh :<C-u>VimShell<CR>
nnoremap <F3> :<C-u>VimShellPop<CR>

" }}}
