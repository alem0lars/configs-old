" backups {{{

" enable files backups
set backup

" set the directory for saving files backups
set backupdir=$HOME/.vim_backups
silent execute '!mkdir -p $HOME/.vim_backups'

" }}}


" swaps {{{

" set the directory for saving swap files
set directory=$HOME/.vim_swaps
silent execute '!mkdir -p $HOME/.vim_swaps'

" }}}


" views {{{

" set the directory for saving views state
set viewdir=$HOME/.vim_views
silent execute '!mkdir -p $HOME/.vim_views'

" when entering and exiting from a buffer load the view state
au BufWinLeave \* silent! mkview
au BufWinEnter \* silent! loadview

" }}}


" undo history {{{

" set the directory for saving undos
set undodir=$HOME/.vim_undos
silent execute '!mkdir -p $HOME/.vim_undos'

" how many undos
set undolevels=2048

" number of lines to save for undo
set undoreload=10240

set undofile

" }}}
