" theme {{{

let g:airline_theme = 'wombat'

" }}}


" powerline {{{

let g:airline_powerline_fonts = 1

" }}}


" tabline {{{

" enable tabline
let g:airline#extensions#tabline#enabled = 1

" show tab number, which is the index
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

" <Leader>number: select the tab of index equal to number
nmap <Leader>1 <Plug>AirlineSelectTab1
nmap <Leader>2 <Plug>AirlineSelectTab2
nmap <Leader>3 <Plug>AirlineSelectTab3
nmap <Leader>4 <Plug>AirlineSelectTab4
nmap <Leader>5 <Plug>AirlineSelectTab5
nmap <Leader>6 <Plug>AirlineSelectTab6
nmap <Leader>7 <Plug>AirlineSelectTab7
nmap <Leader>8 <Plug>AirlineSelectTab8
nmap <Leader>9 <Plug>AirlineSelectTab9

" }}}


" promptline integration {{{

if ((filewritable('/etc/zsh') == 2 && glob('/etc/zsh/prompt.zsh') == '') ||
      \ filewritable('/etc/zsh/prompt.zsh') == 1)

  " enable autogeneration the promptline file
  let g:airline#extensions#promptline#enabled = 1

  " path where the promptline file will be saved
  let g:airline#extensions#promptline#snapshot_file = '/etc/zsh/mods/prompt/promptline.zsh'

  " the airline template to be used for promptline
  let g:airline#extensions#promptline#color_template = 'visual'

endif

" }}}


" tmuxline integration {{{

if ((filewritable('/etc/tmux') == 2 && glob('/etc/tmux/tmuxline.zsh') == '') ||
      \ filewritable('/etc/tmux/tmuxline.zsh') == 1)

  " enable autogeneration the tmuxline file
  let g:airline#extensions#tmuxline#enabled = 1

  " path where the tmuxline file will be saved
  let g:airline#extensions#tmuxline#snapshot_file = '/etc/tmux/tmuxline.conf'

  " the airline template to be used for tmuxline
  let g:airline#extensions#tmuxline#color_template = 'normal'

endif

" }}}


" tagbar integration {{{

" enable airline tagbar extension
let g:airline#extensions#tagbar#enabled = 1

" display complete signature
let g:airline#extensions#tagbar#flags = 's'

" }}}


" syntastic integration {{{

let g:airline#extensions#syntastic#enabled = 1

" }}}

