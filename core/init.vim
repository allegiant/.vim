"======================================================================
"
" viminit.vim - Vim initialize script
"
" Tiny script which makes vim become neat and handy, supports vim.tiny
"
"======================================================================
function! IsWSL()
  if has("unix")
    let lines = readfile("/proc/version")
    if lines[0] =~ "WSL"
      return 1
    endif
  endif
  return 0
endfunction

if IsWSL()
  augroup Yank
    autocmd!
    autocmd TextYankPost * :call system('clip.exe ',@")
  augroup END
endif

" vim: set et fenc=utf-8 ff=unix sts=8 sw=4 ts=4 :
if IsWSL()
	let &t_SI.="\e[5 q"
	let &t_SR.="\e[3 q"
	let &t_EI.="\e[1 q"
endif


"----------------------------------------------------------------------
" syntax config
"----------------------------------------------------------------------
if has('syntax')  
	syntax enable 
	syntax on 
endif

" 打开文件时恢复上一次光标所在位置
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\	 exe "normal! g`\"" |
	\ endif


"----------------------------------------------------------------------
" core initialize
"----------------------------------------------------------------------
set timeoutlen=300
set ttimeoutlen=0 

set nocompatible

set backspace=eol,start,indent
set autoindent
set cindent
set winaltkeys=no
set nowrap
set wildignore=*.swp,*.bak,*.pyc,*.obj,*.o,*.class
set cmdheight=1
set ruler
set colorcolumn=100
set cursorcolumn
set cursorline
set nopaste
set display=lastline
" 搜索时忽略大小写
set ignorecase
" 智能搜索大小写判断，默认忽略大小写，除非搜索内容包含大写字母
set smartcase
" 高亮搜索内容
set hlsearch
" 查找输入时动态增量显示查找结果
set incsearch
set shiftwidth=2
set softtabstop=2
set noexpandtab
set tabstop=2

if has('multi_byte')
	set encoding=utf-8
	set fileencoding=utf-8
	set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1
endif

set formatoptions+=m
set formatoptions+=B
set showcmd

" set clipboard+=unnamed 									" Vim 的默认寄存器和系统剪贴板共享
set clipboard+=unnamedplus

" 显示匹配的括号
set showmatch

" 显示括号匹配的时间
 set matchtime=2
" 允许下方显示目录
set wildmenu
set wildmode=longest:full,full

" 延迟绘制（提升性能）
" set lazyredraw

" 补全菜单长度
set pumheight=10
