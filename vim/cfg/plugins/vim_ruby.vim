" rubycomplete configuration {{{

" parse the entire buffer to add a list of classes to the completion results
let g:rubycomplete_classes_in_global = 1

" load/evaluate code in order to provide completions. this may cause some
" code execution, which may be a concern
let g:rubycomplete_buffer_loading = 1

let g:rubycomplete_include_object = 1
let g:rubycomplete_include_objectspace = 1

" parse the `Gemfile` if available, in case gems are being implicitly required
let g:rubycomplete_load_gemfile = 1

" use `Bundler.require` instead of parsing the `Gemfile`
let g:rubycomplete_use_bundler = 1

" detect rails
let g:rubycomplete_rails = 1

" }}}

