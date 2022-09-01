let path='~/.vim/bundle'

call plug#begin(path)

Plug 'sainnhe/gruvbox-material'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'      """""""""""webdev图标
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vim-which-key'
" Plug 'leafOfTree/vim-vue-plugin'

call plug#end()

IncScript core/config/NERDTree.vim
IncScript core/config/lightline.vim
IncScript core/config/coc.vim
IncScript core/config/leaderf.vim
IncScript core/config/vue-plugin.vim
