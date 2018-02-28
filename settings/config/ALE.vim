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
let g:ale_lint_delay = 10
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
"----------------------ALE 设置 begin ----------------------------"