
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
Plugin 'python-mode/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'fatih/vim-go'
Plugin 'jiangmiao/auto-pairs'


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
" let g:airline_theme='dark'

"------------
"python-mode:
let g:pymode_folding = 0
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 0
let g:jedi#goto_definitions_command = "<leader>g"
let g:jedi#documentation_command = "<leader>d"
let g:jedi#usages_command = "<leader>u"


"------------
"go-mode:
let g:go_def_mapping_enabled = 0
au FileType go nmap <leader>g <Plug>(go-def-split)
au FileType go nmap <leader>d <Plug>(go-doc)
" no autocompletion when . pressed ? must press C-x C-o ? SHIT&FUCK...


"-------------basic setting------------------
" set nu             
 syntax on         
 set ruler        
 set showcmd     
 set laststatus=2  
 set completeopt=preview,menu
 set ruler         
 set cursorline     
 set magic 
 set autoindent
 set tabstop=4
 set softtabstop=4
 set ignorecase
 set hlsearch
 set incsearch
 set showmatch



