let g:lightline = {
            \ 'colorscheme' : 'gruvbox',
            \ 'component': {
            \   'lineinfo': ' %3l:%-2v',
            \   'filename': '%n:%t',
            \   'separator': ''
            \ },
            \ 'component_function': {
            \   'readonly': 'LightlineReadonly',
            \   'fugitive': 'LightlineFugitive',
            \   'bufferinfo': 'lightline#buffer#bufferinfo'
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' },
            \ 'tabline': {
            \   'left': [ [ 'tabs' ] ],
            \   'right': [ [ 'bufferinfo' ],
            \             [ 'separator' ],
            \              ]
            \ },
            \ 'component_expand': {
            \   'buffercurrent': 'lightline#buffer#buffercurrent'
            \ },
            \ 'component_type': {
            \   'buffercurrent': 'tabsel'
            \ }
            \ }

function! LightlineReadonly()
    return &readonly ? '' : ''
endfunction
function! LightlineFugitive()
    if exists('*fugitive#head')
        let branch = fugitive#head()
        return branch !=# '' ? ''.branch : ''
    endif
    return ''
endfunction
let g:lightline_buffer_logo = 'B '

