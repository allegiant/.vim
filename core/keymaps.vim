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
	nnoremap<silent> gd :<c-u>CocCommand fzf-preview.CocDefinition<CR>
	nnoremap<silent> gy :<c-u>CocCommand fzf-preview.CocTypeDefinition<CR>
	nnoremap<silent> gi :<c-u>CocCommand fzf-preview.CocTypeImplementation<CR>
	nnoremap<silent> gr :<c-u>CocCommand fzf-preview.CocReferences<CR>
	nnoremap<silent> gh :call CocActionAsync('doHover')<CR>
	nnoremap<silent> ga <Plug>(coc-codeaction-cursor)
	nnoremap<silent> gs <Plug>(coc-codeaction-source)
	nnoremap<silent> gl <Plug>(coc-codelens-action)
	
	
endfunction

function! g:Keymap_coc_whichkey()
	let g:which_key_map.g = {
      \ 'name' : '+lsp',
			\ 'f' : ['<Plug>(coc-fix-current)'	,			'quick fix']	,
			\ 'r' : ['<Plug>(coc-rename)'	,			'rename']	,
			\ 's' : ['<Plug>(coc-format-selected)'	,			'Format selected']	,
      \ }
	let g:which_key_map.f = {
      \ 'name' : '+file',
			\ 'm' : [':Format'	,			'code Format']	,
			\ '/' : ["m/"	,			'line query']	,
			\ '*' : ["m*"	,			'line query word']	,
			\ 's' : ["mgr"	,			'project grep n-v mode']	,
			\ 'r' : [":CocCommand fzf-preview.ProjectGrepRecall"	,			'project grep recall']	,
			\ 'f' : [":CocCommand fzf-preview.ProjectFiles"	,			'project files']	,
			\ 'u' : [":CocCommand fzf-preview.ProjectMruFiles"	,			'recently used files']	,
      \ }


	let g:which_key_map.c = {
      \ 'name' : '+coc',
			\ 'a' : [":CocCommand fzf-preview.CocDiagnostics"									,			'CocList diagnostic']			,
			\ 'e' : [":CocList extensions"									,			'Coc extensions']			,
			\ 'c' : [":CocList commands"											,			'CocList commands']				,
			\ 'o' : [":CocList outline"											,			'CocList outline']				,
			\ 's' : [":CocList -I symbols"										,			'CocList symbols']				,
			\ 'j' : [":CocList CocNext"											,			'CocList CocNext']				,
			\ 'k' : [":CocList CocPrev"											,			'CocList CocPrev']				,
			\ 'p' : [":CocList CocListResume"								,			'CocList CocListResume']	,
			\ 'm' : [":CocList marketplace"									,			'CocList marketplace']		,
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
      \ 'name' : '+Git',
			\ 'f' : [":CocCommand fzf-preview.GitFiles"	,			'git files']	,
			\ 'j' : ["<Plug>(GitGutterNextHunk)<CR>"	,			'git hunk next']	,
			\ 'k' : ["<Plug>(GitGutterPrevHunk)<CR>"	,			'git hunk prev']	,
			\ 'u' : [":CocCommand fzf-preview.FromResources project_mru git"	,			'git project mru']	,
			\ 's' : [":CocCommand fzf-preview.GitStatus"	,			'git status']	,
			\ 'a' : [":CocCommand fzf-preview.GitActions"	,			'git actions']	,
			\ 'g' : [":CocCommand fzf-preview.Jumps"	,			'git jumps']	,
			\ 'c' : [":CocCommand fzf-preview.Changes"	,			'git changes']	,
      \ }
endfunction

