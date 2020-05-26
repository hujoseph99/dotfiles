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

" YouCompleteMe
Plugin 'valloric/youcompleteme'

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
" gruvbox color scheme
Plugin 'morhetz/gruvbox'

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
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" -------------- airline settings --------------------
let g:airline_theme = 'gruvbox'

" -------------- map hotkeys --------------------
map mm <C-w>
" screen movement
map gk <C-e> 
map gj <C-y> 
map gu <C-b> 
map gi <C-f> 
map gn <C-d> 
map gm <C-u> 
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
map md gcc
" -------------- nerdTree -------------------
" Opens nerd tree with ctrl-n
map <C-n> :NERDTreeToggle<CR>
" Closes nerd tree if only window open is the nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" -------------- brackets -------------------
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
set cc=100
