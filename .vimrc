" 判断操作系统类型
if(has('win32') || has('win64'))
  let g:isWIN = 1
  let g:isMAC = 0
else
  if system('uname') =~ 'Darwin'
    let g:isWIN = 0
    let g:isMAC = 1
  else
    let g:isWIN = 0
    let g:isMAC = 0
  endif
endif

" 判断是否处于GUI界面
if has('gui_running')
  let g:isGUI = 1
else
  let g:isGUI = 0
endif

source $VIM/.vim/settings/base.vim
source $VIM/.vim/settings/gui.vim
source $VIM/.vim/settings/plugin.vim
source $VIM/.vim/settings/map.vim
