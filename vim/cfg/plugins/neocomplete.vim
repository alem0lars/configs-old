" enable neocomplete {{{

" disable autocomplpop
let g:acp_enableAtStartup = 0

" use neocomplete
let g:neocomplete#enable_at_startup = 1

" }}}


" completion rules {{{

" use smartcase
let g:neocomplete#enable_smart_case = 1

" don't display more than 32 items
let g:neocomplete#max_list = 32

" minimum char completion lengths
let g:neocomplete#sources#syntax#min_keyword_length = 3

" don't preselect entries
let g:neocomplete#enable_auto_select = 0
" don't add automatic delimiters
let g:neocomplete#enable_auto_delimiter = 0

let g:neocomplete#enable_cursor_hold_i = 1
let g:neocomplete#cursor_hold_i_time = 256

" }}}


" dictionary definition {{{

let g:neocomplete#sources#dictionary#dictionaries = {
  \ 'default'  : '',
  \ 'vimshell' : expand('~/.vim_shell')
  \ }

" }}}


" keywords patterns to completion {{{

" define keywords patterns for completion
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" }}}


" keywords patterns to omni completion {{{

" enable per-language completion based on input patterns.
" the following input patterns definitions will add corresponding
" omni function to the available completion sources, without
" forcing it over the other sources available
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.tex = '\v\\\a*(ref|cite)\a*([^]]*\])?\{([^}]*,)*[^}]*'


" enable forcing per-language completion based on input patterns.
" the following input patterns definitions will force to use the
" corresponding omni func when they match; in that case, the other
" sources will be ignored
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc = '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)'
let g:neocomplete#force_omni_input_patterns.objcpp = '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'

" }}}


" omnifunc setup {{{

" c,c++,objc,objcpp -> clang_complete
" automatic setup by plugin

" python -> jedi
" needed because we set `g:jedi#completions_enabled=0` to skip the
" direct usage of jedi-vim, but it's there where the plugin also
" registers the omnifunc
autocmd FileType python setlocal omnifunc=jedi#completions

" ruby -> rubycomplete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" haskell -> necoghc
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" use the builtin csscomplete for css
" TODO: check if it's necessary
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" use the builtin htmlcomplete for html and markdown
" TODO: check if it's necessary
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" use the builtin javascriptcomplete for javascript
" TODO: check if it's necessary
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType coffee setlocal omnifunc=javascriptcomplete#CompleteJS

" }}}


" hotkeys {{{

inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()

" <C-y>: close popup
inoremap <expr><C-y>  neocomplete#close_popup()
" <C-e>: to close popup and cancel selection
inoremap <expr><C-e>  neocomplete#cancel_popup()

" <C-h> or <BS>: close popup before deleting the char
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"

" Plugin key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" <CR>: close the popup
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
endfunction

" <TAB>: expand snippet or complete
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<TAB>"

" }}}
