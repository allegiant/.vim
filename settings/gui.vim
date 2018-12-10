filetype plugin indent on " 加载插件和支持缩进
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
if g:isWIN
  source $VIMRUNTIME/mswin.vim
endif

" 设置着色模式和字体
if g:isWIN
  colorscheme gruvbox
  set guifont=DejaVuSansMono\ YaHei\ NF:h11
  set guifontwide=DejaVuSansMono\ YaHei\ NF:h11
  set renderoptions=type:directx,renmode:5,taamode:1 "使用directx2d渲染"
elseif g:isMAC

  colorscheme gruvbox
  set guifont=DejaVuSansMono\ YaHei\ NF:h11
  set guifontwide=DejaVuSansMono\ YaHei\ NF:h11
else
  colorscheme gruvbox
  set guifont=DejaVuSansMono\ YaHei\ NF:h11
  set guifontwide=DejaVuSansMono\ YaHei\ NF:h11
endif

if g:isGUI

else
	
endif

if has("termguicolors")
    " fix bug for vim
    set t_8f=^[[38;2;%lu;%lu;%lum
    set t_8b=^[[48;2;%lu;%lu;%lum

    " enable true color
    set termguicolors
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
