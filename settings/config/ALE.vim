"----------------------ALE 设置 begin ----------------------------"
"始终开启标志列
"let g:ale_sign_column_always = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '❗'
let g:ale_statusline_format = ['✘ %d', '❗ %d', '✔ ok']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = '✷ Error'
let g:ale_echo_msg_warning_str = '⚠ Warning'
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
"----------------------ALE 设置 begin ----------------------------"