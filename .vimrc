
"-------------------------macro-------------------------
"To save a macro in vim you can do:
" From normal mode: qq
" enter whatever commands
" From normal mode: q
" open .vimrc
" then press <C-r C-r q> to insert the macro into your let @q = '...' line
" then macro q has been saved in .vimrc for use.
" => http://vim.wikia.com/wiki/Macros
"-------------------------------------------------------
set nocompatible     
filetype off        

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'joshdick/onedark.vim'

" 加完新的插件后,需要重启vim再PluginInstall才生效...

" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
" Plugin 'L9'

" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
" Plugin 'git://git.wincent.com/command-t.git'

" 你的所有插件需要在下面这行之前
call vundle#end()  
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
"filetype plugin on

" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"

"-----------plugin setting------------------------
map <F1> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

nnoremap <F3> :set nonumber!<CR>
nnoremap <F2> :buffers<CR>:buffer<Space>

"goto anywhere by press ':
nmap ' <Plug>(easymotion-s)

"make vim have sublime's multi cursor!(c-d => c-n)
"usage:
"1.when at a word, press c-n to select same word, then press v back into normal mode, then press i to insert staff,
"2.press v to select multi lines in visual mode, press c-n will add multi cursor in every line, 
"  then press i to insert staff,and, c-n also select current word like c-d sublime.

"must let terminal know 256 color when no $TERM=xterm-256color !
 set t_Co=256
 let g:airline_theme='behelit'
" let g:airline_theme='onedark'
 let g:airline#extensions#tabline#enabled=1


"-------------basic setting------------------
 set nu             
 syntax on         
 colorscheme onedark
 set ruler        
 set showcmd     
 set laststatus=2  
 set completeopt=preview,menu
 set ruler         
 set cursorline     
 set magic 
" set autoindent
 set softtabstop=4
 set ignorecase
 set hlsearch
 set incsearch
 set showmatch
 set tabstop=4 shiftwidth=4 expandtab
 set nowrap

