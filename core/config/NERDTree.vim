let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

call g:Keymap_nerdtree()
