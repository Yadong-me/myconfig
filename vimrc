" copy in http://www.ruanyifeng.com/blog/2018/09/vimrc.html
"
"
" 不与 Vi 兼容
set nocompatible
" 打开语法高亮
syntax on
" 在底部显示，当前处于命令模式还是插入模式
set showmode
" 命令模式下，在底部显示，当前键入的指令
set showcmd
" 支持使用鼠标
set mouse=a
" 设置粘贴模式
set paste
" 启用256色
set t_co=256
" 开启文件类型检查，并且载入与该类型对应的缩进规则
filetype indent on
" 设置编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
"
" 缩进
" 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set autoindent
" 按下 Tab 键时，Vim 显示的空格数
set tabstop=4
" 在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数
set shiftwidth=4
" 由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格
set expandtab
" Tab 转为多少个空格
set softtabstop=4
"
" 外观
" 显示行号
set number
" 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号
set relativenumber
" 光标所在的当前行高亮
set cursorline
" 设置行宽，即一行显示多少个字符
" set extwidth=80
" 自动折行
set wrap
" 关闭自动折行
set nowrap
"
" 搜索
" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set showmatch
" 搜索时，高亮显示匹配结果
set hlsearch
" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch
" 搜索时忽略大小写
" set igonrecase
" 同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感
set smartcase
"
" 编辑
" 打开英语单词的拼写检查
" set spell spelllang=en_us
" 不创建备份文件
set nobackup
" 不创建交换文件
set noswapfile
" 保留撤销历史
set undofile
" 设置备份文件、交换文件、操作历史文件的保存位置
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//
" 自动切换工作目录
set autochdir
" 出错时，不要发出响声
" set noerrorbells
" 出错时，发出视觉提示，通常是屏幕闪烁
set visualbell
" Vim 需要记住多少次历史操作
set history=1000
" 打开文件编辑室其他改动监视
set autoread
" 命令模式下，底部操作指令按下 Tab 键自动补全
set wildmenu
set wildmode=longest:list,full
"
" python config
"
func SetTitle()
call setline(1, "\#!/usr/bin/python")
call setline(2, "\# -*- coding=utf8 -*-")
call setline(3, "\"\"\"")
call setline(4, "\# @Author : Yadong")
call setline(5, "\# @Created Time : ".strftime("%Y-%m-%d %H:%M:%S"))
call setline(6, "\# @Description : ")
call setline(7, "\"\"\"")
normal G
normal o
normal o
endfunc
autocmd bufnewfile *.py call SetTitle()
" python config Done 
"
" 让vimrc配置变更立即生效
"
autocmd BufWritePost $MYVIMRC source $MYVIMRC
colorscheme gruvbox
