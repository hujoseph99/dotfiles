set nocompatible              " be iMproved, required
filetype off                  " required

" ------------------- PLUG STUFF ------------------- 
call plug#begin()

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" VimIndentGuides
Plug 'Yggdroot/indentLine'

" NerdTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Advanced C++ highlight
Plug 'octol/vim-cpp-enhanced-highlight'

" Auto brackets
Plug 'jiangmiao/auto-pairs'

" Commentary
Plug 'tpope/vim-commentary'

" Go
Plug 'fatih/vim-go'

" Airline
Plug 'vim-airline/vim-airline'

" Surround
Plug 'tpope/vim-surround'

" Polyglot - Adds syntax highax highlighting for almost every language
Plug 'sheerun/vim-polyglot'

" Easy motion
Plug 'easymotion/vim-easymotion'

" incsearch
Plug 'haya14busa/incsearch.vim'

" incsearch + easymotion
Plug 'haya14busa/incsearch-easymotion.vim'

" YCM
Plug 'ycm-core/YouCompleteMe'

" gruvbox color scheme
Plug 'morhetz/gruvbox'

" Dracula color scheme
Plug 'dracula/vim', { 'name': 'dracula' }


" All of your Plugins must be added before the following line
call plug#end()
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
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 1

" -------------- airline settings --------------------
let g:airline_theme = 'gruvbox'

" -------------- map hotkeys --------------------
let mapleader=" "
map mm <C-w>

" screen movement
map gm <C-b> 
map gn <C-f> 
map gu <C-e> 
map gi <C-y> 
map gj <C-d> 
map gk <C-u> 

" jump to definition in new tab
nmap <leader>d <Plug>(go-def-tab)

" ---- ---------- indentguides -------------------
let g:indentLine_char = '¦'

"-------------- easyMotion + incsearch  -------------------
" map <Leader><Leader> <Plug>(easymotion-prefix)
map / <Plug>(incsearch-easymotion-/)
map ? <Plug>(incsearch-easymotion-?)
map g/ <Plug>(incsearch-easymotion-stay)
map m <Plug>(easymotion-prefix)
" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)
" map mw <Plug>(easymotion-w)
" map mb <Plug>(easymotion-b) 
" map mf <Plug>(easymotion-f)

" -------------- commentary -------------------
map <leader>c gcc

" -------------- YouCompleteMe -------------------
nmap J <plug>(YCMHover)
nnoremap <leader><leader>r :YcmForceCompileAndDiagnostics<CR>

" -------------- nerdTree -------------------
" Opens nerd tree with ctrl-n
map <leader><leader>n :NERDTreeToggle<CR>
" Closes nerd tree if only window open is the nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" -------------- miscallenous -------------------
set backspace=indent,eol,start
filetype plugin indent on 
set tabstop=4 shiftwidth=4 expandtab
" editor
set number " show relative numbers for all except for current:w
set relativenumber
set ignorecase " ignore case unless there is a capitalized letter
set smartcase

set listchars=tab:\|\ 
set list
set wildmenu
set so=10
set encoding=utf-8
set autoindent
set cindent
set cc=80
