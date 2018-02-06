set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 判断操作系统类型
if(has('win32') || has('win64'))
    "set rtp+=$VIM/.vim/bundle/Vundle.vim
    let path='$VIM/.vim/bundle'
else
    "set rtp+=~/.vim/bundle/Vundle.vim
    let path='~/.vim/bundle'
endif

" vim-plug 管理的插件列表必须位于 plug#begin() 和 plug#end() 之间
call plug#begin(path)
"Plugin 'VundleVim/Vundle.vim'
Plug 'iamcco/mathjax-support-for-mkdp' | Plug 'iamcco/markdown-preview.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'nightsense/forgotten'
Plug 'scrooloose/nerdtree' , { 'on': 'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'thinca/vim-quickrun'              """""""快速运行
Plug '$VIM/.vim/bundle/YouCompleteMe' | Plug 'tenfyzhong/CompleteParameter.vim'
Plug 'ternjs/tern_for_vim'
Plug 'Raimondi/delimitMate'             """""""符号自动补全
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'                 """""""代码片段
Plug 'MikeCoder/open-in-browser.vim'
Plug 'gko/vim-coloresque'
Plug 'alvan/vim-closetag'
Plug 'posva/vim-vue' | Plug 'w0rp/ale'

call plug#end()
""""""""""""""" 插件列表结束 """"""""""""""""""
" PlugInstall [name ...] [#threads]   Install plugins
" PlugUpdate [name ...] [#threads]  Install or update plugins
" PlugClean[!]  Remove unused directories (bang version will clean without prompt)
" PlugUpgrade   Upgrade vim-plug itself
" PlugStatus  Check the status of plugins
" PlugDiff  Examine changes from the previous update and the pending changes
" PlugSnapshot[!] [output path]   Generate script for restoring the current snapshot of the plugins
" 将你自己对非插件片段放在这行之后

"----------------------NERDTree设置--------------------------"
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"----------------------NERDTree设置 end --------------------------"

"----------------------airline设置 begin --------------------------"
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 "tab number
let g:airline#extensions#tabline#show_close_button = 0

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

"----------------------quickrun设置 begin -----------------------"
 let g:quickrun_config = {
    \   "_" : {
    \       "outputter" : "message",
    \   },
    \}

  let g:quickrun_no_default_key_mappings = 1
"----------------------quickrun设置 end -------------------------"

"----------------------youcompleteme设置 begin-------------------"
"youcompleteme  默认tab  s-tab 和自动补全冲突
    let g:ycm_key_list_select_completion=['<a-j>']
    let g:ycm_key_list_previous_completion=['<a-k>']
    let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
    let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
    let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
    let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
    let g:ycm_collect_identifiers_from_tags_files = 1
    " 开启语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
 " 回车作为选中,不跳到下一行
let g:ycm_key_list_stop_completion = ['<CR>']
" 直接触发自动补全 insert模式下
let g:ycm_key_invoke_completion = '<A-/>'
    " 黑名单,不启用
    let g:ycm_filetype_blacklist = {
        \ 'tagbar' : 1,
        \ 'gitcommit' : 1,
\}
"----------------------youcompleteme设置 end----------------------"

"----------------------ultisnips设置 begin -----------------------"
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"----------------------ultisnips设置 end -------------------------"

"----------------------OpenInBrowser设置 begin -------------------"
let g:open_in_browser_allowed_file_types = {
            \"html": 1,
            \"htm": 1,
            \"xml": 1,
            \"md":1,
        \}
"----------------------OpenInBrowser设置 end ---------------------"

"----------------------closetag 设置 begin -----------------------"
let g:closetag_filenames = "*.xml,*.html,*.xhtml,*.phtml,*.php,*.vue"
"----------------------closetag 设置 end -------------------------"

"----------------------delimitMate 设置 begin --------------------"
au FileType xml,html,phtml,php,xhtml,js,vue let b:delimitMate_matchpairs = "(:),[:],{:}"
"----------------------delimitMate 设置 end ----------------------"

"----------------------ALE 设置 begin ----------------------------"
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
let g:ale_statusline_format = ['E%d', 'W%d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:airline#extensions#ale#enabled =1
let g:airline#extensions#ale#error_symbol = 'E'
let g:airline#extensions#ale#warning_symbol = 'W'
"----------------------ALE 设置 begin ----------------------------"