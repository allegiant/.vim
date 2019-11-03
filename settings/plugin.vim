set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 判断操作系统类型
if(has('win32') || has('win64'))
    let path='$VIM/.vim/bundle'
else
    let path='~/.vim/bundle'
endif

" vim-plug 管理的插件列表必须位于 plug#begin() 和 plug#end() 之间
call plug#begin(path)
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } | Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'thinca/vim-quickrun'                                                          """""""""""快速运行
"Plug 'jiangmiao/auto-pairs'                                                         """""""""""符号自动补全
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'                                 """""""""""代码片段
Plug 'ap/vim-css-color'
Plug 'alvan/vim-closetag'
Plug 'posva/vim-vue' | Plug 'w0rp/ale'
Plug 'ryanoasis/vim-devicons' | Plug 'tiagofumo/vim-nerdtree-syntax-highlight'      """""""""""webdev图标
Plug 'junegunn/vim-easy-align'                                                      """""""""""快速对齐
Plug 'Yggdroot/LeaderF', { 'do': '.\install.sh' }                                  """""""""""搜索
Plug 'neoclide/coc.nvim', { 'do': 'yarn install' }
Plug 'tyru/open-browser.vim'
Plug 'pearofducks/ansible-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'fatih/vim-go'
call plug#end()
"""""""""""""""""""""""""""""""""" 插件管理结束 """"""""""""""""""""""""""""""""""""""""
" PlugInstall [name ...] [#threads]   Install plugins
" PlugUpdate [name ...] [#threads]  Install or update plugins
" PlugClean[!]  Remove unused directories (bang version will clean without prompt)
" PlugUpgrade   Upgrade vim-plug itself
" PlugStatus  Check the status of plugins
" PlugDiff  Examine changes from the previous update and the pending changes
" PlugSnapshot[!] [output path]   Generate script for restoring the current snapshot of the plugins
" 将你自己对非插件片段放在这行之后


"""""""""""""""""""""""""""""""""" 插件配置begin """"""""""""""""""""""""""""""""""""""""

if g:isWIN
    source $VIM/.vim/settings/config/NERDTree.vim
    source $VIM/.vim/settings/config/airline.vim
    source $VIM/.vim/settings/config/quickrun.vim
    source $VIM/.vim/settings/config/ultisnips.vim
    source $VIM/.vim/settings/config/closetag.vim
    source $VIM/.vim/settings/config/ALE.vim
    source $VIM/.vim/settings/config/vue.vim
    source $VIM/.vim/settings/config/coc.vim
    source $VIM/.vim/settings/config/openBrowser.vim
    source $VIM/.vim/settings/config/ansible.vim
    source $VIM/.vim/settings/config/leaderf.vim
    source $VIM/.vim/settings/config/vim-go.vim

else
    source ~/.vim/settings/config/NERDTree.vim
    source ~/.vim/settings/config/airline.vim
    source ~/.vim/settings/config/quickrun.vim
    source ~/.vim/settings/config/ultisnips.vim
    source ~/.vim/settings/config/closetag.vim
    source ~/.vim/settings/config/ALE.vim
    source ~/.vim/settings/config/vue.vim
    source ~/.vim/settings/config/coc.vim
    source ~/.vim/settings/config/openBrowser.vim
    source ~/.vim/settings/config/ansible.vim
    source ~/.vim/settings/config/leaderf.vim
    source ~/.vim/settings/config/vim-go.vim

endif
"""""""""""""""""""""""""""""""""" 插件配置end """"""""""""""""""""""""""""""""""""""""
