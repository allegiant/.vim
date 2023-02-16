let g:which_key_use_floating_win = 1
let g:which_key_map = {}

call g:Keymap_win()
call g:Keymap_buf()
call g:Keymap_coc()
call g:Keymap_gitgutter()

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
