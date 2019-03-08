
function! s:open_fileInBrowser()
    echo "dsafasf"
    execute 'OpenBrowser '.expand('%:p')
endfunction

nnoremap <C-b> :call <SID>open_fileInBrowser()<CR>
