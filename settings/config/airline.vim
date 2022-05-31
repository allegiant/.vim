"----------------------airline设置 begin --------------------------"
let g:airline_theme='gruvbox_material'
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 "tab number
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#alt_sep = 0
let g:airline#extensions#tabline#buffers_label = 'Buffers'
let g:airline#extensions#tabline#tabs_label = 'Tabs'
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#show_tab_count = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

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
