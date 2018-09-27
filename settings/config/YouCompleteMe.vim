"----------------------youcompleteme设置 begin-------------------"
let g:ycm_complete_in_comments = 1                            " 在注释输入中也能补全
let g:ycm_use_ultisnips_completer = 1                         " 提示UltiSnips
let g:ycm_min_num_identifier_candidate_chars = 2			  " 两个字符后自动补全Buffer中的符号
let g:ycm_collect_identifiers_from_comments_and_strings = 1   " 注释和字符串中的文字也会被收入补全
let g:ycm_seed_identifiers_with_syntax=1                      " 开启语法关键字补全
let g:ycm_add_preview_to_completeopt = 0					  " 不打预览窗口
let g:ycm_show_diagnostics_ui = 0                             " 关闭显示诊断信息
let g:ycm_server_log_level = 'info'							  " 日志等级
let g:ycm_complete_in_strings=1								  "在字符串输入中也能补全
set completeopt=menu,menuone 								  " 关闭补全描述窗口
let g:ycm_disable_for_files_larger_than_kb = 5000			  " 文件超过5000kb，禁用补全
" 自动弹出完整语义补全
let g:ycm_semantic_triggers = {
	\   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : [ 're!^', 're!^\s+', '. ' ],
    \   'css': [ 're!^', 're!^\s+', ': ' ],
    \   'scss': [ 're!^', 're!^\s+', ': ' ],
    \   'less': [ 're!^', 're!^\s+', ': ' ],
    \ }
" css补全end
"----------------------youcompleteme设置 end----------------------"

