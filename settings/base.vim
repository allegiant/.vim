set nocompatible 										" 不要支持vi模式
syntax on 												" 支持语法高亮
filetype plugin indent on 								" 加载插件和支持缩进


augroup ft_vim 											" vim 文件折叠方式为 marker
    au!
    au FileType vim setlocal foldmethod=marker
augroup END

set wildmenu            								" 打开命令模式补全
set wildmode=list:full									" 命令模式补全方式
set nocompatible
set nobackup
set noswapfile
set nowrap 											" 不自动换行
set history=1024
set autochdir											" 打开文件时，自动 cd 到文件所在目录
set whichwrap=b,s,<,>,[,]
set nobomb
set backspace=indent,eol,start whichwrap+=<,>,[,]
set clipboard+=unnamed 									" Vim 的默认寄存器和系统剪贴板共享
set winaltkeys=no 										" 设置 alt 键不映射到菜单栏
set tabstop=2 											" 设定 tab 长度为 4
set softtabstop=2 										" 使得按退格键时可以一次删掉 4 个空格
set shiftwidth=2 										" 设定 << 和 >> 命令移动时的宽度为 4
set ignorecase smartcase 								" 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan 											" 禁止在搜索到文件两端时重新搜索
" set incsearch 											" 输入搜索内容时就显示搜索结果
set hlsearch 											" 搜索时高亮显示被找到的文本
set noerrorbells 										" 关闭错误信息响铃
set novisualbell 										" 关闭使用可视响铃代替呼叫
set vb t_vb= 											" 置空错误铃声的终端代码
au GuiEnter * set t_vb= 								" 关闭闪屏
set autoread 											" 当文件在外部被修改时，自动重新读取
set relativenumber 										" 设置相对行号
set expandtab											" 将所有Tab展开为空格
set autoindent											" 换行时保持当前行的缩进
set cmdheight=1                     "命令栏高度"

"""""""""""""""""""""""""""""""""""" 编码设置 begin """"""""""""""""""""""""""""""""""""""""""""""
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,mac,dos
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'
""""""""""""""""""""""""""""""""""" 编码设置  end """""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
