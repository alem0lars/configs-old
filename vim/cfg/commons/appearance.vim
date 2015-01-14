" color scheme {{{

set background=dark
colorscheme wombat256mod

" }}}


" status bar {{{

" always have a statusbar
set laststatus=2

" }}}


" long lines {{{

" set the maximum line length
set textwidth=80
" highlight longer text
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" }}}


" misc {{{

" improve performance by redrawing the screen lazily
"set lazyredraw

" }}}
