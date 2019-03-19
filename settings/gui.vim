filetype plugin indent on " 加载插件和支持缩进
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
if g:isWIN
    source $VIMRUNTIME/mswin.vim
endif

" 设置着色模式和字体
if g:isWIN
    colorscheme gruvbox
  if !g:isNVIM
    set guifont=DejaVuSansMono\ YaHei\ NF:h11
    set guifontwide=DejaVuSansMono\ YaHei\ NF:h11
  endif
elseif g:isMAC

  colorscheme gruvbox
  set guifont=DejaVuSansMono\ YaHei\ NF:h11
  set guifontwide=DejaVuSansMono\ YaHei\ NF:h11
else
  colorscheme gruvbox
  set guifont=DejaVuSansMono\ YaHei\ NF:h11
  set guifontwide=DejaVuSansMono\ YaHei\ NF:h11
endif

"窗口启动位置
if !g:isNVIM
    winpos 555 300
endif
"窗口大小
set lines=30 columns=100

set cursorline " 突出显示当前行
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
set showtabline=2 "隐藏Tab栏
