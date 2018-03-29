filetype plugin indent on " 加载插件和支持缩进
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" 设置着色模式和字体
if g:isWIN
  
  colorscheme forgotten-dark
  set guifont=SourceCodePro\ NF:h11
  set guifontwide=SourceCodePro\ NF:h11
  let g:enable_bold_font = 1
elseif g:isMAC

  colorscheme forgotten-dark
  set guifont=SourceCodePro\ NF:h11
  set guifontwide=SourceCodePro\ NF:h11
  let g:enable_bold_font = 1
else
  colorscheme forgotten-dark
  set guifont=SourceCodePro\ NF:h11
  set guifontwide=SourceCodePro\ NF:h11
  let g:enable_bold_font = 1
endif

if g:isGUI

else
	let g:forgotten_dark_CursorLineNr = 'off'
	let g:forgotten_dark_LineNr = 'off'
endif


"set cursorline " 突出显示当前行
set hlsearch
set number
" 分割出来的窗口位于当前窗口下边/右边
set splitbelow
set splitright
"不显示工具/菜单栏
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
set showtabline=0 "隐藏Tab栏
