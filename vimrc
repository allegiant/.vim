if has('nvim')
    let g:isNVIM = 1
else
    let g:isNVIM = 0
endif

source ~/.vim/settings/base.vim
source ~/.vim/autoload/plug.vim
source ~/.vim/settings/plugin.vim
source ~/.vim/settings/gui.vim
source ~/.vim/settings/map.vim

