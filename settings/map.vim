" 修改leader键
let mapleader = ';'
let g:mapleader = ';'

vmap "+y " 选中状态下 Ctrl+c 复制

map <C-n> :NERDTreeTabsToggle<CR> " 打开/关闭 NERDTree
nmap <Leader>r <Plug>(quickrun)
map <F10> :QuickRun<CR>

"----------------------ultisnips设置 begin ----------------------------------"
let g:UltiSnipsExpandTrigger       = "<a-j>"
let g:UltiSnipsListSnippets        = "<Leader><tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"----------------------ultisnips设置 end ------------------------------------"

"--------------------markdown-preview.vim设置 begin -------------------------"
nmap <Leader>mdp :MarkdownPreview<CR>         " 普通模式
imap <Leader>mdp :MarkdownPreview<CR>        " 插入模式
nmap <Leader>mds :MarkdownPreviewStop<CR>    " 普通模式
imap <Leader>mds :MarkdownPreviewStop<CR>    " 插入模式
"--------------------markdown-preview.vim设置 end ---------------------------"

"-----------------------------ale设置 begin ---------------------------------"
nmap <F8> <Plug>(ale_fix)
nmap <silent> <a-k> <Plug>(ale_previous_wrap)
nmap <silent> <a-j> <Plug>(ale_next_wrap)
"-----------------------------ale设置 end ------------------------------------"

"--------------------vim-easy-align设置 begin --------------------------------"
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"--------------------vim-easy-align设置 end ----------------------------------"

"--------------------coc.vim设置 begin -------------------------"
nmap <Leader>af :call CocActionAsync('format')<CR>  " 普通模式
imap <Leader>af :call CocActionAsync('format')<CR>  " 插入模式
"--------------------coc.vim设置 end ---------------------------"
