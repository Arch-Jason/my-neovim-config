" __  __       _   _         __     ___           
"|  \/  |_   _| \ | | ___  __\ \   / (_)_ __ ___  
"| |\/| | | | |  \| |/ _ \/ _ \ \ / /| | '_ ` _ \ 
"| |  | | |_| | |\  |  __/ (_) \ V / | | | | | | |
"|_|  |_|\__, |_| \_|\___|\___/ \_/  |_|_| |_| |_|
"        |___/                                    

"===========================
"  map
"===========================

" for colemak
"    ^
"    f
"< r   t >
"    s
"    v
noremap f k
noremap r h
noremap t l
noremap s j

" k to f
noremap k f

" use S-s to start the spell check
map <S-s> :set spell<CR>

" 分屏窗口移动
map <C-down> <C-W>j
map <C-up> <C-W>k
map <C-left> <C-W>h
map <C-right> <C-W>l

"分屏窗口大小调节
map <up> :resize+5<CR>
map <down> :resize-5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

"Shift+s save
imap <C-s> <Esc>:w<CR>a
map <C-s> :w<CR>

"切换Buffer"
nnoremap <C-left> :bn<CR>
nnoremap <C-right> :bp<CR>


" ==========================
" more comfortable
" ==========================
" 检测文件类型
filetype on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on

" 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu
" 命令行自动补全
set wildmenu
" 回车即选中当前项
" inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

" set number
set nu
" syntx on
syntax on
" 突出当前行
set cursorline

"" 启用鼠标
set mouse=a

" 显示当前的行号列号
set ruler
" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前模式
set showmode
" 括号配对情况, 跳转并高亮一下匹配的括号
set showmatch
" 高亮search命中的文本
set hlsearch
" 随着键入即时搜索
set incsearch
" 搜索时忽略大小写
set ignorecase
" smartcase
set smartcase

" Smart indent
set smartindent

" Smart indent
set smartindent
" never add copyindent, case error   " copy the previous indentation on autoindenting
set autoindent

" 设置Tab键的宽度
set tabstop=4
" 每一次缩进对应的空格数
set shiftwidth=4
" 按退格键时可以一次删掉 4 个空格
set softtabstop=4
" insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空格
set smarttab
" 将Tab自动转化成空格[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set expandtab

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7
"===========================
"  plugs
"===========================

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
    Plug 'connorholyday/vim-snazzy'
    Plug 'junegunn/goyo.vim'
call plug#end()


" ===========
" vim-airline
" ===========
" set theme
let g:airline_theme="bubblegum" 
" the font
" let g:airline_powerline_fonts = 1   
" show tabs
let g:airline#extensions#tabline#enabled = 1


" ==============
" vim-table-mode
" ==============
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


" ===============
" the color theme
" ===============
" dark background
"set background=dark
"" set the color theme
"colorscheme gruvbox9
""语法高亮
"let g:gruvbox_filetype_hi_groups = 1
""透明背景
"let g:gruvbox_transp_bg = 1

colorscheme snazzy

" ========
" nerdtree
" ========
" open
map <F5> :NERDTree<CR>
" close
map <F6> :NERDTreeClose<CR>


" ====================
" vim-multiple-cursors
" ====================
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


" ==================
" instant-markdown-d
" ==================
let g:instant_markdown_mathjax = 1
let g:instant_markdown_open_to_the_world = 1


" ===
" coc
" ===
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
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

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
