" automatically detect file types
filetype plugin indent on

" turn on syntax highlighting
syntax on

" allow unsaved background buffers and remember marks/undo for them
set hidden

" set history size
set history=65536

" set to auto read when a file is changed from the outside
set autoread

" display column numbers
set number

" always show the current position both in ruler and highlighting the line
set ruler

" show matching parenthesis & brackets
set showmatch

" set the leader as ',' instead of '\'
let mapleader = ','


" modeline {{{

set modeline
set modelines=5

" }}}


" hotkeys {{{

" <F12>: enable the pastetoggle mode, which preserve formatting on paste
set pastetoggle=<F12>

" }}}
