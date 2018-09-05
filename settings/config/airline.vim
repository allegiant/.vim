"----------------------airline设置 begin --------------------------"
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 "tab number
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#alt_sep = 1
let g:airline#extensions#tabline#buffers_label = 'Buf'
let g:airline#extensions#tabline#tabs_label = 'Tab'
let airline#extensions#tabline#current_first = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
 " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
"----------------------airline设置 end --------------------------"