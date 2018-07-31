"----------------------youcompleteme设置 begin-------------------"
"youcompleteme  默认tab  s-tab 和自动补全冲突
let g:ycm_key_list_select_completion=['<a-j>']
let g:ycm_key_list_previous_completion=['<a-k>']
let g:ycm_complete_in_comments = 1                            " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                             " 在字符串输入中也能补全
let g:ycm_use_ultisnips_completer = 1                         " 提示UltiSnips
let g:ycm_collect_identifiers_from_comments_and_strings = 1   " 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_identifier_candidate_chars = 2              " 基于语义的补全
let g:ycm_seed_identifiers_with_syntax=1                      " 开启语法关键字补全
let g:ycm_key_list_stop_completion = ['<CR>']                 " 回车作为选中,不跳到下一行
let g:ycm_key_invoke_completion = '<A-/>'                     " 直接触发自动补全 insert模式下
let g:ycm_show_diagnostics_ui = 0                             " 关闭显示诊断信息
" 白名单,启用
" let g:ycm_filetype_whitelist = { 
"       \ "c":1,
"       \ "cpp":1, 
"       \ "objc":1,
"       \ "sh":1,
"       \ "zsh":1,
"       \ "zimbu":1,
"       \ "javascript":1,
"       \ "go":1,
"       \ "vue":1,
"       \ "html":1,
"       \ }
" " 自动弹出语义补全
" let g:ycm_semantic_triggers =  {
"     \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
"     \ 'cs,lua,javascript': ['re!\w{2}'],
" \}
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0
"----------------------youcompleteme设置 end----------------------"
