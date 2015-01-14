" rules {{{

" automatically expand tab into spaces
set expandtab

" copy the indentation from the previous line, when starting a new line
set autoindent

" ensure that tabs are only used for indentation, while spaces are used
" everywhere else. when you press <tab> in insert mode, a <tab> is inserted
" when indenting, and/or the correct number of spaces when aligning text
set smarttab

" prevents inserting two spaces after punctuation on a join (J)
set nojoinspaces

" rules to apply when using backspace
set backspace=indent,eol,start

" }}}


" sizes {{{

" insert 2 spaces for tabs, indentation and back-indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2

" }}}


" whitespaces highlight {{{

" highlight special whitespaces
set list
set listchars=tab:›\ ,trail:•

" }}}

