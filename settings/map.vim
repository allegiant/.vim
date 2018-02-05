" 修改leader键
let mapleader = ';'
let g:mapleader = ';'

vmap "+y " 选中状态下 Ctrl+c 复制

map <C-n> :NERDTreeToggle<CR> " 打开/关闭 NERDTree

map <C-b> :OpenInBrowser<CR>  " 在浏览器中打开

nmap <Leader>r <Plug>(quickrun)
map <F10> :QuickRun<CR>

"--------------------CompleteParameter.vim设置 begin ------------------------"
inoremap <silent><expr> ( complete_parameter#pre_complete("()")
smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
"--------------------CompleteParameter.vim设置 end ------------------------"

"--------------------markdown-preview.vim设置 begin ------------------------"
nmap <Leader>mdp :MarkdownPreview<CR>         " 普通模式
imap <Leader>mdp :MarkdownPreview<CR>        " 插入模式
nmap <Leader>mds :MarkdownPreviewStop<CR>    " 普通模式
imap <Leader>mds :MarkdownPreviewStop<CR>    " 插入模式
"--------------------markdown-preview.vim设置 begin ------------------------"