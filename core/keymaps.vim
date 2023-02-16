"======================================================================
"
" keymaps.vim - keymaps start with using <space>
"
"
"======================================================================
   
let g:mapleader = "\<Space>"



"----------------------------------------------------------------------
" window control
"----------------------------------------------------------------------
noremap <silent><leader>= :resize +3<cr>
noremap <silent><leader>- :resize -3<cr>
noremap <silent><leader>, :vertical resize -3<cr>
noremap <silent><leader>. :vertical resize +3<cr>

noremap <silent><leader>nh :nohl<cr>


" replace
noremap <leader>p viw"0p
noremap <leader>y yiw

" fast save
noremap <C-S> :w<cr>
inoremap <C-S> <ESC>:w<cr>

function! g:Keymap_win()

	let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5'  , 'expand-window-below']  ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5'  , 'expand-window-up']		 ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }
	
endfunction



function! g:Keymap_coc()
	let g:which_key_map.g = {
      \ 'name' : '+lsp',
			\ 'k' : ['<Plug>(coc-diagnostic-prev)'					,	'diagnostic prev']	,
			\ 'j' : ['<Plug>(coc-diagnostic-next)'					,	'diagnostic next']	,
			\ 'd' : ['<Plug>(coc-definition)'								,	'definition']				,
			\ 'y' : ['<Plug>(coc-type-definition)'					,	'type definition']	,
			\ 'i' : ['<Plug>(coc-implementation)'						,	'implementation']		,
			\ 'f' : ['<Plug>(coc-references)'								,	'references']				,
			\ 'h' : [':call ShowDocumentation()<CR>'				,	'show docs']				,
			\ 'r' : ['<Plug>(coc-rename)'										,	'rename']						,
			\ 'a' : ['<Plug>(coc-codeaction-cursor)'	,	'code action']			,
      \ }
	let g:which_key_map.f = {
      \ 'name' : '+file',
			\ 'm' : [':Format'	,			'code Format']	,
      \ }
	let g:which_key_map.c = {
      \ 'name' : '+coc',
			\ 'a' : [":CocList diagnostics"		,			'CocList diagnostic']			,
			\ 'e' : [":CocList extensions"		,			'CocList extensions']			,
			\ 'c' : [":CocList commands"			,			'CocList commands']				,
			\ 'o' : [":CocList outline"				,			'CocList outline']				,
			\ 's' : [":CocList -I symbols"		,			'CocList symbols']				,
			\ 'j' : [":CocList CocNext"				,			'CocList CocNext']				,
			\ 'k' : [":CocList CocPrev"				,			'CocList CocPrev']				,
			\ 'p' : [":CocList CocListResume"	,			'CocList CocListResume']	,
			\ 'm' : [":CocList marketplace"		,			'CocList marketplace']		,
      \ }
endfunction

function! g:Keymap_nerdtree()
	nmap <silent><leader>e :NERDTreeToggle<CR>
endfunction

function! g:Keymap_lightline()
	nmap <silent><Tab> :bnext<CR>
	nmap <silent><S-Tab> :bprev<CR>
endfunction

function g:Keymap_buf() abort
	let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['<Plug>lightline#bufferline#go(1)'        , 'buffer 1']        ,
      \ '2' : ['<Plug>lightline#bufferline#go(2)'        , 'buffer 2']        ,
      \ '3' : ['<Plug>lightline#bufferline#go(3)'        , 'buffer 3']        ,
      \ '4' : ['<Plug>lightline#bufferline#go(4)'        , 'buffer 4']        ,
			\ 'd' : {
        \ 'name': '+delete',
        \ '1' : ['<Plug>lightline#bufferline#delete(1)'     , 'delete buf 1']      ,
        \ '2' : ['<Plug>lightline#bufferline#delete(2)'     , 'delete buf 2']      ,
        \ '3' : ['<Plug>lightline#bufferline#delete(3)'     , 'delete buf 3']      ,
        \ '4' : ['<Plug>lightline#bufferline#delete(4)'     , 'delete buf 4']      ,
        \ '5' : ['<Plug>lightline#bufferline#delete(5)'     , 'delete buf 5']      ,
        \ '9' : ['<Plug>lightline#bufferline#delete(9)'     , 'delete buf 9']      ,
        \ },
      \ 'c' : ['bd'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'h' : ['Startify'  , 'home-buffer']     ,
      \ 'l' : ['blast'     , 'last-buffer']     ,
      \ 'n' : ['bnext'     , 'next-buffer']     ,
      \ 'p' : ['bprevious' , 'previous-buffer'] ,
      \ '?' : ['Buffers'   , 'fzf-buffer']      ,
      \ }
endfunction

function! g:Keymap_floaterm()
	nnoremap   <silent>   <C-\>   :FloatermToggle<CR>
	tnoremap   <silent>   <C-\>   <C-\><C-n>:FloatermToggle<CR>
endfunction

function! g:Keymap_gitgutter()
	let g:which_key_map.s = {
      \ 'name' : '+GitGutter',
			\ 'j' : ["<Plug>(GitGutterNextHunk)<CR>"	,			'git hunk next']	,
			\ 'k' : ["<Plug>(GitGutterPrevHunk)<CR>"	,			'git hunk prev']	,
      \ }
endfunction

