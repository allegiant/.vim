set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 判断操作系统类型
let path='~/.vim/bundle'

" vim-plug 管理的插件列表必须位于 plug#begin() 和 plug#end() 之间
call plug#begin(path)
" Plug 'sainnhe/gruvbox-material'
Plug 'lifepillar/vim-gruvbox8'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'                                 """""""""""代码片段
Plug 'alvan/vim-closetag'
Plug 'ryanoasis/vim-devicons' | Plug 'tiagofumo/vim-nerdtree-syntax-highlight'      """""""""""webdev图标
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'liuchengxu/vim-which-key'
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

source ~/.vim/settings/config/NERDTree.vim
source ~/.vim/settings/config/airline.vim
source ~/.vim/settings/config/ultisnips.vim
source ~/.vim/settings/config/closetag.vim
source ~/.vim/settings/config/coc.vim
source ~/.vim/settings/config/leaderf.vim
"""""""""""""""""""""""""""""""""" 插件配置end """"""""""""""""""""""""""""""""""""""""
