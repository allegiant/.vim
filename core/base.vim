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
  let &t_SI = "\<Esc>[6 q"
  let &t_SR = "\<Esc>[3 q"
  let &t_EI = "\<Esc>[2 q"
endif

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set nu			" set number
set ai                  " auto indenting
set cindent		" auto indenting for C-based language
" set smartindent 	" auto select indent method
set showmatch		" match pair when select
set ruler               " show the cursor position
set hlsearch            " highlight the last searched term
set nohls		" turn off highlight of last searching
set history=1000        " keep 1000 lines of history
set relativenumber 	" show relative number
syntax on               " syntax highlighting

filetype off     " required for Vundle

set nobackup
set noswapfile
set nowrap 											" 不自动换行
set history=1024
set expandtab											" 将所有Tab展开为空格
set autoindent											" 换行时保持当前行的缩进
set clipboard+=unnamed 									" Vim 的默认寄存器和系统剪贴板共享
set winaltkeys=no 										" 设置 alt 键不映射到菜单栏
set tabstop=2 											" 设定 tab 长度为 4
set softtabstop=2 										" 使得按退格键时可以一次删掉 4 个空格
set shiftwidth=2 										" 设定 << 和 >> 命令移动时的宽度为 4

set nobomb
set wildmenu            								" 打开命令模式补全
set wildmode=list:full									" 命令模式补全方式
