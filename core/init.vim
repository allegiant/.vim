"======================================================================
"
" viminit.vim - Vim initialize script
"
" Tiny script which makes vim become neat and handy, supports vim.tiny
"
"======================================================================

" vim: set et fenc=utf-8 ff=unix sts=8 sw=4 ts=4 :



"----------------------------------------------------------------------
" syntax config
"----------------------------------------------------------------------
if has('syntax')  
	syntax enable 
	syntax on 
endif


" restore screen after quitting
if has('unix')
	" disable modifyOtherKeys
	if exists('+t_TI') && exists('+t_TE')
		let &t_TI = ''
		let &t_TE = ''
	endif
	let s:uname = system('uname')
	let s:xterm = 0
	if s:uname =~ "FreeBSD"
		let s:xterm = 1
	endif
	" restore screen after quitting
	if s:xterm != 0
		if &term =~ "xterm"
			let &t_ti="\0337\033[r\033[?47h"
			let &t_te="\033[?47l\0338"
			if has("terminfo")
				let &t_Sf="\033[3%p1%dm"
				let &t_Sb="\033[4%p1%dm"
			else
				let &t_Sf="\033[3%dm"
				let &t_Sb="\033[4%dm"
			endif
		endif
		set restorescreen
	endif
endif


"----------------------------------------------------------------------
" core initialize
"----------------------------------------------------------------------
set nocompatible

set backspace=eol,start,indent
set autoindent
set cindent
set winaltkeys=no
set nowrap
set wildignore=*.swp,*.bak,*.pyc,*.obj,*.o,*.class
set ttimeout
set ttimeoutlen=50
set cmdheight=1
set ruler
set nopaste
set display=lastline

set shiftwidth=2
set softtabstop=2
set noexpandtab
set tabstop=2
set relativenumber

if has('multi_byte')
	set encoding=utf-8
	set fileencoding=utf-8
	set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1
endif

set formatoptions+=m
set formatoptions+=B
set showcmd

set clipboard+=unnamed 									" Vim 的默认寄存器和系统剪贴板共享
