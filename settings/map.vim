" 修改leader键
let mapleader = ' '
let g:mapleader = ' '

vmap "+y " 选中状态下 Ctrl+c 复制

map <Leader>e :NERDTreeToggle<CR> " 打开/关闭 NERDTree

"----------------------ultisnips设置 begin ----------------------------------"
let g:UltiSnipsExpandTrigger       = "<a-j>"
let g:UltiSnipsListSnippets        = "<Leader><tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"----------------------ultisnips设置 end ------------------------------------"



"--------------------coc.vim设置 begin -------------------------"
nmap <Leader>fm :call CocActionAsync('format')<CR>  " 普通模式
imap <Leader>fm :call CocActionAsync('format')<CR>  " 插入模式
"--------------------coc.vim设置 end ---------------------------"
