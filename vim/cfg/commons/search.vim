" search rules {{{

" with both ignorecase and smartcase turned on, a search is case-insensitive" if you enter the search string in ALL lower case. however, if your search
" string has one or more characters in upper case, it will assume that you
" want a case-sensitive search
set ignorecase
set smartcase

" see live results while typing the search string
set incsearch

" }}}


" hotkeys {{{

" <Leader>/: clear previous search highlighting
nmap <silent> <Leader>/ :nohlsearch<CR>

" }}}

