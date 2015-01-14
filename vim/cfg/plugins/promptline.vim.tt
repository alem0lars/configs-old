" preset {{{

" sections semantic:
" 'a': vi-mode
" 'b': important stuff, informations not always available but important
" 'c': path
" 'x': vcs info
" 'y': additional stuff, informations not always available and not important
" 'z': user informations
" 'warn': last process exit code
let g:promptline_preset = {
  \'a' :    [ '$vim_mode' ],
  \'b' :    [ promptline#slices#jobs() ],
  \'c' :    [ promptline#slices#cwd({'dir_limit': 1}) ],
  \'x' :    [ '$(git rev-parse --short HEAD 2>/dev/null)', promptline#slices#git_status(), promptline#slices#vcs_branch() ],
  \'y' :    [ promptline#slices#python_virtualenv() ],
  \'z' :    [ promptline#slices#user() ],
  \'warn' : [ promptline#slices#last_exit_code() ]}

" }}}

