set nocompatible              " be iMproved, required
filetype off                  " required

" ------------------- VUNDLE STUFF ------------------- 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" VimIndentGuides
Plugin 'Yggdroot/indentLine'

" NerdTree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Advanced C++ highlight
Plugin 'octol/vim-cpp-enhanced-highlight'

" Auto brackets
Plugin 'jiangmiao/auto-pairs'

"" Commentary
Plugin 'tpope/vim-commentary'

" Go
Plugin 'fatih/vim-go'

" Airline
Plugin 'vim-airline/vim-airline'

" Surround
Plugin 'tpope/vim-surround'

" Polyglot - Adds syntax highax highlighting for almost every language
Plugin 'sheerun/vim-polyglot'

" Easy motion
Plugin 'easymotion/vim-easymotion'

" incsearch
Plugin 'haya14busa/incsearch.vim'

" incsearch + easymotion
Plugin 'haya14busa/incsearch-easymotion.vim'

" YCM
" Plugin 'ycm-core/YouCompleteMe'

" Completor
Plugin 'maralla/completor.vim'

" Obsession
Plugin 'tpope/vim-obsession'

" gruvbox color scheme
Plugin 'morhetz/gruvbox'

" Dracula color scheme
Plugin 'dracula/vim', { 'name': 'dracula' }

" Material
Plugin 'kaicataldo/material.vim', { 'branch': 'main' }

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" -------------- color scheme settings --------------------
syntax enable
syntax on
" for vim 8
if (has("termguicolors"))
    set termguicolors
endif

" let g:material_theme_style = 'darker'
" let g:material_terminal_italics = 1
" colorscheme material
colorscheme gruvbox
set background=dark

let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 1

" -------------- airline settings --------------------
let g:airline_theme = 'gruvbox'
" let g:airline_theme = 'material'

" -------------- map hotkeys --------------------
"
nnoremap <SPACE> <Nop>
let mapleader=" "

" screen movement
map gm <C-b> 
map gn <C-f> 
map gu <C-e> 
map gi <C-y> 
map gj <C-d> 
map gk <C-u> 

map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 9gt
map <leader>0 10gt
map <leader><leader>1 11gt
map <leader><leader>2 12gt
map <leader><leader>3 13gt
map <leader><leader>4 14gt
map <leader><leader>5 15gt
map <leader><leader>6 16gt
map <leader><leader>7 17gt
map <leader><leader>8 18gt
map <leader><leader>9 19gt
map <leader><leader>0 20gt

map <leader><leader>j :sh<CR>
map <leader>w <C-w>

" jump to definition in new tab
" nmap <leader>d <Plug>(go-def-tab)

" ---- ---------- indentguides -------------------
let g:indentLine_char = '¦'

"-------------- easyMotion + incsearch  -------------------
" map <Leader><Leader> <Plug>(easymotion-prefix)
" map / <Plug>(incsearch-easymotion-/)
" map ? <Plug>(incsearch-easymotion-?)
" map g/ <Plug>(incsearch-easymotion-stay)
" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)
" map mw <Plug>(easymotion-w)
" map mb <Plug>(easymotion-b) 
" map mf <Plug>(easymotion-f)
map / <Plug>(incsearch-easymotion-/)
map ? <Plug>(incsearch-easymotion-?)
map F <Plug>(easymotion-F)
map f <Plug>(easymotion-f)

" -------------- commentary -------------------
map <leader>c gcc

" -------------- YouCompleteMe -------------------
" nmap J <plug>(YCMHover)
" nnoremap <leader><leader>r :YcmForceCompileAndDiagnostics<CR>

" ------------- Completor -------------------
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" noremap <silent> <leader>d :call completor#do('definition')<CR>
" noremap <silent> <leader>s :call completor#do('hover')<CR>
" -------------- vim indent lines -------------------
let g:indentLine_setColors = 0
let g:indentLine_char = '¦'
let g:indentLine_color_term = 242

" -------------- nerdTree -------------------
" Opens nerd tree with ctrl-n
" map <leader><leader>n :NERDTreeToggle<CR>
" " Closes nerd tree if only window open is the nerd tree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" -------------- tab line show numbers -------------------
"fu! MyTabLabel(n)
"let buflist = tabpagebuflist(a:n)
"let winnr = tabpagewinnr(a:n)
"let string = fnamemodify(bufname(buflist[winnr - 1]), ':t')
"return empty(string) ? '[unnamed]' : string
"endfu

"fu! MyTabLine()
"let s = ''
"for i in range(tabpagenr('$'))
"" select the highlighting
"   if i + 1 == tabpagenr()
"      let s .= '%#TabLineSel#'
"   else
"      let s .= '%#TabLine#'
"   endif

"   " set the tab page number (for mouse clicks)
"   "let s .= '%' . (i + 1) . 'T'
"   " display tabnumber (for use with <count>gt, etc)
"   let s .= ' '. (i+1) . ' '

"   " the label is made by MyTabLabel()
"   let s .= ' %{MyTabLabel(' . (i + 1) . ')} '

"   if i+1 < tabpagenr('$')
"      let s .= ' |'
   " endif
" endfor
" return s
" endfu
" set tabline=%!MyTabLine()

" -------------- miscallenous -------------------
" set backspace=indent,eol,start
" filetype plugin indent on 

" set tabstop=3 shiftwidth=3 expandtab softtabstop
" set nosmartindent
" set autoindent
" set cindent

" " editor
" set number " show relative numbers for all except for current:w
" set relativenumber
" set ignorecase " ignore case unless there is a capitalized letter
" set smartcase
" set autoread " automatically load changed files when open
" set noswapfile " do not want swap files
" set belloff=all " stop annoying sounds"

" set listchars=tab:\|\ 
" set list
" set wildmenu
" set so=10
" set encoding=utf-8
" set cc=80
