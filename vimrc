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

if has('nvim')
    let g:isNVIM = 1
else
    let g:isNVIM = 0
endif

" 判断是否处于GUI界面
if has('gui_running')
  let g:isGUI = 1
else
  let g:isGUI = 0
endif


if g:isNVIM
	source $XDG_CONFIG_HOME/share/nvim/.vim/settings/base.vim
	source $XDG_CONFIG_HOME/share/nvim/.vim/autoload/plug.vim
	source $XDG_CONFIG_HOME/share/nvim/.vim/settings/plugin.vim
	source $XDG_CONFIG_HOME/share/nvim/.vim/settings/gui.vim
	source $XDG_CONFIG_HOME/share/nvim/.vim/settings/map.vim
else 
    if g:isWIN
	    source $VIM/.vim/settings/base.vim
	    source $VIM/.vim/autoload/plug.vim
	    source $VIM/.vim/settings/plugin.vim
	    source $VIM/.vim/settings/gui.vim
	    source $VIM/.vim/settings/map.vim
    else
	    source ~/.vim/settings/base.vim
	    source ~/.vim/autoload/plug.vim
	    source ~/.vim/settings/plugin.vim
	    source ~/.vim/settings/gui.vim
	    source ~/.vim/settings/map.vim
    endif
endif

