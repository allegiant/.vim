"----------------------quickrun设置 begin -----------------------"
 let g:quickrun_config = {
    \   "_" : {
    \       "outputter" : "message",
    \   },
    \}

  let g:quickrun_no_default_key_mappings = 1
"----------------------quickrun设置 end -------------------------"

"------------------------less编译 begin -------------------------"
let g:quickrun_config.less = {
		\   'command': 'lessc',
		\   'exec': '%c %o %s  %s:p:r.css',
	    \ }
"------------------------less编译 end   -------------------------"