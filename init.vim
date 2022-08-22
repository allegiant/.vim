if has('nvim')
    let g:isNVIM = 1
else
    let g:isNVIM = 0
endif

source ~/.vim/core/base.vim
source ~/.vim/autoload/plug.vim
source ~/.vim/core/map.vim
source ~/.vim/core/plugin.vim
source ~/.vim/core/gui.vim

