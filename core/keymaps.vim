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

vnoremap<silent><leader>y "+y<cr>
nnoremap<silent><leader>y "+y<cr>
nnoremap<silent><leader>Y '"+yg_'<cr>
nnoremap<silent><leader>p '"+p'<cr>
nnoremap<silent><leader>P '"+P'<cr>
vnoremap<silent><leader>p '"+p'<cr>
vnoremap<silent><leader>P '"+P'<cr>
vnoremap<silent><leader>d '"+d'<cr>

" move between windows
nnoremap<silent><C-h> <C-w>h<cr>
nnoremap<silent><C-j> <C-w>j<cr>
nnoremap<silent><C-k> <C-w>k<cr>
nnoremap<silent><C-l> <C-w>l<cr>

noremap <silent><leader>= :resize +3<cr>
noremap <silent><leader>- :resize -3<cr>
noremap <silent><leader>, :vertical resize -3<cr>
noremap <silent><leader>. :vertical resize +3<cr>

noremap <silent><leader>nh :nohl<cr>


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

function g:Keymap_coc_common() abort
	 " Use <c-space> to trigger completion
	if has('nvim')
	  inoremap <silent><expr> <c-space> coc#refresh()
	else
	  inoremap <silent><expr> <c-@> coc#refresh()
	endif
	
	" Use `[g` and `]g` to navigate diagnostics
	" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
	nmap<silent> gk <Plug>(coc-diagnostic-prev)
	nmap<silent> gj <Plug>(coc-diagnostic-next)
	
	" GoTo code navigation
	nmap<silent> gd <Plug>(coc-definition)
	nmap<silent> gy <Plug>(coc-type-definition)
	nmap<silent> gi <Plug>(coc-implementation)
	nmap<silent> gr <Plug>(coc-references)
	
	" Use K to show documentation in preview window
	nmap<silent> gh :call ShowDocumentation()<CR>
endfunction

function! g:Keymap_coc_whichkey()
	let g:which_key_map.g = {
      \ 'name' : '+lsp',
			\ 'a' : ['<Plug>(coc-codeaction-cursor)'	,			'codeaction']	,
			\ 's' : ['<Plug>(coc-codeaction-cursor)'	,			'codeaction source']	,
			\ 'f' : ['<Plug>(coc-fix-current)'	,			'quick fix']	,
      \ }
	let g:which_key_map.r = {
      \ 'name' : '+reset',
			\ 'n' : ['<Plug>(coc-rename)'	,			'rename']	,
      \ }
	let g:which_key_map.f = {
      \ 'name' : '+file',
			\ 's' : ['<Plug>(coc-format-selected)'	,			'Format selected']	,
			\ 'm' : [':Format'	,			'code Format']	,
      \ }
	let g:which_key_map.c = {
      \ 'name' : '+coc',
			\ 'a' : [":CocFzfList diagnostics"									,			'CocList diagnostic']			,
			\ 'b' : [":CocFzfList diagnostics --current-buf"		,			'CocList diagnostic current buffer only']			,
			\ 'e' : [":CocFzfList extensions"										,			'CocList extensions']			,
			\ 'c' : [":CocFzfList commands"											,			'CocList commands']				,
			\ 'o' : [":CocFzfList outline"											,			'CocList outline']				,
			\ 's' : [":CocFzfList -I symbols"										,			'CocList symbols']				,
			\ 'j' : [":CocFzfList CocNext"											,			'CocList CocNext']				,
			\ 'k' : [":CocFzfList CocPrev"											,			'CocList CocPrev']				,
			\ 'p' : [":CocFzfList CocListResume"								,			'CocList CocListResume']	,
			\ 'm' : [":CocFzfList marketplace"									,			'CocList marketplace']		,
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

