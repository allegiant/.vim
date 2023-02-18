let g:which_key_use_floating_win = 1
let g:which_key_map = {}
let g:which_key_map_visual = {}

call g:Keymap_win()
call g:Keymap_buf()
call g:Keymap_gitgutter()
call g:Keymap_coc_whichkey()

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

call which_key#register('<Space>', "g:which_key_map")

" call which_key#register('<Space>', "g:which_key_map",'n')
" call which_key#register('<Space>', "g:which_key_map_visual", 'v')
" nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
