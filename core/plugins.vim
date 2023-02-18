let path='~/.vim/bundle'

call plug#begin(path)

Plug 'rhysd/vim-healthcheck'
Plug 'sainnhe/gruvbox-material'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'      """""""""""webdev图标
Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-commentary'
Plug 'voldikss/vim-floaterm'
Plug 'airblade/vim-gitgutter'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}



call plug#end()

IncScript core/config/NERDTree.vim
IncScript core/config/lightline.vim
IncScript core/config/floaterm.vim
IncScript core/config/gitgutter.vim
IncScript core/config/whichkey.vim
IncScript core/config/coc.vim

