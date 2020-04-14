"                       _           _ 
" _ __   ___  _____   _(_)_ __ ___ | |
"| '_ \ / _ \/ _ \ \ / / | '_ ` _ \| |
"| | | |  __/ (_) \ V /| | | | | | |_|
"|_| |_|\___|\___/ \_/ |_|_| |_| |_(_)
                                     
"==========================================
" General Settings 基础设置
"==========================================

"    ^
"    f
"< r   t >
"    s
"    v
map f k
map r h
map t l
map s j




" instantmarkdown
let g:instant_markdown_mathjax = 1


" history存储容量
set history=2000

" 检测文件类型
filetype on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on

" 文件修改之后自动载入
set autoread

" 取消备份。 视情况自己改
set nobackup
" 关闭交换文件
set noswapfile

" 突出显示当前列
"set cursorcolumn
" 突出显示当前行
set cursorline

"显示特别的行号
" set relativenumber

" 鼠标暂不启用, 键盘党....
"set mouse-=a
"" 启用鼠标
set mouse=a
" Hide the mouse cursor while typing
" set mousehide
"==========================================
" Display Settings 展示/排版等界面格式设置
"==========================================

" 显示当前的行号列号
set ruler
" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7

" 命令行（在状态行下）的高度，默认为1，这里是2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line - use 2 lines for the status bar
set laststatus=2

" 显示行号
set number
" 取消换行
"set nowrap

" 括号配对情况, 跳转并高亮一下匹配的括号
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=2

" 设置文内智能搜索提示
" 高亮search命中的文本
set hlsearch
" 打开增量搜索模式,随着键入即时搜索
set incsearch
" 搜索时忽略大小写
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
set smartcase


" 缩进配置
" Smart indent
set smartindent
" 打开自动缩进
" never add copyindent, case error   " copy the previous indentation on autoindenting
set autoindent

" tab相关变更
" 设置Tab键的宽度        [等同的空格个数]
set tabstop=4
" 每一次缩进对应的空格数
set shiftwidth=4
" 按退格键时可以一次删掉 4 个空格
set softtabstop=4
" insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空格
set smarttab
" 将Tab自动转化成空格[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set expandtab
" 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" A buffer becomes hidden when it is abandoned
set hidden
set wildmode=list:longest
set ttyfast


"==========================================
" FileEncode Settings 文件编码,格式
"==========================================
" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
"set langmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
" 下面这句只影响普通模式 (非图形界面) 下的 Vim
set termencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m
" 合并两行中文时，不在中间加空格
set formatoptions+=B


"==========================================
" others 其它设置
"==========================================
" " vimrc文件修改之后自动加载, windows
" autocmd! bufwritepost _vimrc source %
" " vimrc文件修改之后自动加载, linux
" autocmd! bufwritepost .vimrc source %

" " 自动补全配置
" 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu

" 增强模式中的命令行自动完成操作
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class

" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" 回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"


"==========================================
" HotKey Settings  自定义快捷键设置
"==========================================

" 主要按键重定义

" 分屏窗口移动, Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"分屏窗口大小调节
map <up> :resize+5<CR>
map <down> :resize-5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

call plug#begin()
    Plug 'scrooloose/nerdtree'
    Plug 'suan/vim-instant-markdown'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tomasr/molokai'
    Plug 'dhruvasagar/vim-table-mode'
    "Plug 'valloric/youcompleteme'
    Plug 'mattn/emmet-vim'
    Plug 'kien/ctrlp.vim'
    " Plug 'morhetz/gruvbox'
    Plug 'hardcoreplayers/gruvbox9'
    Plug 'mhinz/vim-startify'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-commentary'
    " Plug 'majutsushi/tagbar'
    " Plug 'vim-scripts/c.vim'
    Plug 'plan9-for-vimspace/acme-colors'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'fatih/vim-go'
    Plug 'jiangmiao/auto-pairs'
call plug#end()
"       _                       _      _ _            
"__   _(_)_ __ ___         __ _(_)_ __| (_)_ __   ___ 
"\ \ / / | '_ ` _ \ _____ / _` | | '__| | | '_ \ / _ \
" \ V /| | | | | | |_____| (_| | | |  | | | | | |  __/
"  \_/ |_|_| |_| |_|      \__,_|_|_|  |_|_|_| |_|\___|
"                                                     
let g:airline_theme="luna" 

"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   
 
 "打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
 "我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#buffer_nr_show = 1

 "设置切换Buffer快捷键"
 nnoremap <C-N> :bn<CR>
 nnoremap <C-P> :bp<CR>

 " 关闭状态显示空白符号计数,这个对我用处不大"
 let g:airline#extensions#whitespace#enabled = 0
 let g:airline#extensions#whitespace#symbol = '!'

" 在Gvim中我设置了英文用Hermit， 中文使用 YaHei Mono "
if has('win32')
  set guifont=Hermit:h13
  set guifontwide=Microsoft_YaHei_Mono:h12
endif

" molokai
"let g:molokai_original = 1

"
"__     _____ __  __   _____     _     _        __  __           _      
"\ \   / /_ _|  \/  | |_   _|_ _| |__ | | ___  |  \/  | ___   __| | ___ 
" \ \ / / | || |\/| |   | |/ _` | '_ \| |/ _ \ | |\/| |/ _ \ / _` |/ _ \
"  \ V /  | || |  | |   | | (_| | |_) | |  __/ | |  | | (_) | (_| |  __/
"   \_/  |___|_|  |_|   |_|\__,_|_.__/|_|\___| |_|  |_|\___/ \__,_|\___

function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

"                         _               
"   __ _ _ __ _   ___   _| |__   _____  __
"  / _` | '__| | | \ \ / / '_ \ / _ \ \/ /
" | (_| | |  | |_| |\ V /| |_) | (_) >  < 
"  \__, |_|   \__,_| \_/ |_.__/ \___/_/\_\
"  |___/                                  
"
set background=dark "深色背景
colorscheme gruvbox9
let g:gruvbox_filetype_hi_groups = 1 "语法高亮
let g:gruvbox_transp_bg = 1 "透明背景

"  __ _  ___ _ __ ___   ___ 
" / _` |/ __| '_ ` _ \ / _ \
"| (_| | (__| | | | | |  __/
" \__,_|\___|_| |_| |_|\___|
"
" colorscheme acme
"                     _ _                 
"  _ __   ___ _ __ __| | |_ _ __ ___  ___ 
" | '_ \ / _ \ '__/ _` | __| '__/ _ \/ _ \
" | | | |  __/ | | (_| | |_| | |  __/  __/
" |_| |_|\___|_|  \__,_|\__|_|  \___|\___|
"                                         
"NERDtree open
map <F5> :NERDTree<CR>
"NERDtree close
map <F6> :NERDTreeClose<CR>

"        _                                 _ _   _       _                       
" __   _(_)_ __ ___        _ __ ___  _   _| | |_(_)_ __ | | ___        ___ _   _ 
" \ \ / / | '_ ` _ \ _____| '_ ` _ \| | | | | __| | '_ \| |/ _ \_____ / __| | | |
"  \ V /| | | | | | |_____| | | | | | |_| | | |_| | |_) | |  __/_____| (__| |_| |
"   \_/ |_|_| |_| |_|     |_| |_| |_|\__,_|_|\__|_| .__/|_|\___|      \___|\__,_|
"                                                 |_|                            
"                         
"  _ __ ___ ___  _ __ ___ 
" | '__/ __/ _ \| '__/ __|
" | | | (_| (_) | |  \__ \
" |_|  \___\___/|_|  |___/
"                         
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"  ___ ___   ___ 
" / __/ _ \ / __|
"| (_| (_) | (__ 
" \___\___/ \___|
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" if has('patch8.1.1068')
"   " Use `complete_info` if your (Neo)Vim version supports it.
"   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" else
"   imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>                
