
function! s:open_fileInBrowser()
    execute 'OpenBrowser '.expand('%:p')
endfunction

nnoremap <C-b> :call <SID>open_fileInBrowser()<CR>
