set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 判断操作系统类型
if(has('win32') || has('win64'))
    set rtp+=$VIM/.vim/bundle/Vundle.vim
    let path='$VIM/.vim/bundle'
else
    set rtp+=~/.vim/bundle/Vundle.vim
    let path='~/.vim/bundle'
endif

" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin(path)
Plugin 'VundleVim/Vundle.vim'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'nightsense/forgotten'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'thinca/vim-quickrun'              """""""快速运行
Plugin 'Valloric/YouCompleteMe'
Plugin 'tenfyzhong/CompleteParameter.vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'Raimondi/delimitMate'             """""""符号自动补全
Plugin 'SirVer/ultisnips'                 """""""代码片段
Plugin 'honza/vim-snippets'
Plugin 'MikeCoder/open-in-browser.vim'
Plugin 'gko/vim-coloresque'
Plugin 'alvan/vim-closetag'
Plugin 'posva/vim-vue'
Plugin 'w0rp/ale'

call vundle#end()
""""""""""""""" 插件列表结束 """"""""""""""""""
filetype plugin on    " required          """""""打开文件类型及插件侦测
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后

"----------------------NERDTree设置--------------------------"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"----------------------NERDTree设置 end --------------------------"

"----------------------airline设置 begin --------------------------"
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number

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
        \}
"----------------------OpenInBrowser设置 end ---------------------"

"----------------------closetag 设置 begin -----------------------"
let g:closetag_filenames = "*.xml,*.html,*.xhtml,*.phtml,*.php,*.vue"
"----------------------closetag 设置 end -------------------------"

"----------------------delimitMate 设置 begin --------------------"
au FileType xml,html,phtml,php,xhtml,js,vue let b:delimitMate_matchpairs = "(:),[:],{:}"
"----------------------delimitMate 设置 end ----------------------"