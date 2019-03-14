set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 判断操作系统类型
if(has('win32') || has('win64'))
    "set rtp+=$VIM/.vim/bundle/Vundle.vim
    let path='$VIM/.vim/bundle'
else
    "set rtp+=~/.vim/bundle/Vundle.vim
    let path='~/.vim/bundle'
endif

" vim-plug 管理的插件列表必须位于 plug#begin() 和 plug#end() 之间
call plug#begin(path)
"Plugin 'VundleVim/Vundle.vim'
Plug 'iamcco/mathjax-support-for-mkdp' | Plug 'iamcco/markdown-preview.vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
"Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'thinca/vim-quickrun'                                                          """""""""""快速运行
Plug 'jiangmiao/auto-pairs'                                                        """""""""""符号自动补全
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'                                 """""""""""代码片段
Plug 'ap/vim-css-color'
Plug 'alvan/vim-closetag'
Plug 'posva/vim-vue' | Plug 'w0rp/ale'
Plug 'ryanoasis/vim-devicons' | Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	    """""""""""webdev图标
Plug 'junegunn/vim-easy-align' 		                                                """""""""""快速对齐
Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }                                  """""""""""搜索
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'tyru/open-browser.vim'
Plug 'itchyny/lightline.vim' | Plug 'taohexxx/lightline-buffer'
Plug 'pearofducks/ansible-vim'
Plug 'Chiel92/vim-autoformat'
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
	source $VIM/.vim/settings/config/lightline.vim
	source $VIM/.vim/settings/config/quickrun.vim
	source $VIM/.vim/settings/config/ultisnips.vim
	source $VIM/.vim/settings/config/closetag.vim
	source $VIM/.vim/settings/config/ALE.vim
	source $VIM/.vim/settings/config/vue.vim
    source $VIM/.vim/settings/config/coc.vim
    source $VIM/.vim/settings/config/openBrowser.vim
    source $VIM/.vim/settings/config/ansible.vim

else
	source ~/.vim/settings/config/NERDTree.vim
	source ~/.vim/settings/config/airline.vim
	source ~/.vim/settings/config/quickrun.vim
	source ~/.vim/settings/config/ultisnips.vim
	source ~/.vim/settings/config/closetag.vim
	source ~/.vim/settings/config/ALE.vim
	source ~/.vim/settings/config/vue.vim
    source ~/.vim/settings/config/coc.vim
endif
"""""""""""""""""""""""""""""""""" 插件配置end """"""""""""""""""""""""""""""""""""""""
