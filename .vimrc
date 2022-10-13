let mapleader=" "
let maplocalleader=" "

" movement
noremap J 10j
noremap K 10k

noremap <C-k> 5<C-y>
noremap <C-j> 5<C-e>

" Indentation
nnoremap < <<
nnoremap > >>

" Split Screen
nmap <leader>sl :set splitright<CR>:vsplit<CR>
nmap <leader>sh :set nosplitright<CR>:vsplit<CR>
nmap <leader>sk :set nosplitbelow<CR>:split<CR>
nmap <leader>sj :set splitbelow<CR>:split<CR>

" Navigate  splitted screes
noremap <leader>hh <C-w>h
noremap <leader>ll <C-w>l
noremap <leader>kk <C-w>k
noremap <leader>jj <C-w>j

noremap <leader>H <C-w>H
noremap <leader>L <C-w>L
noremap <leader>K <C-w>K
noremap <leader>J <C-w>J

" Adjust splitted screen size
map <up> :res  +5<CR>
map <down> :res -5<CR>
map <right> :vertical resize+5<CR>
map <left> :vertical resize-5<CR>

" Copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

nmap <leader>Y gg0vG$Y

" folding
nnoremap zv za

" -------------- tabs --------------------
map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 9gt

noremap H gT
noremap L gt

" Navigate through tabs
noremap tu :tab split<CR>
noremap tU :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

map W :w<CR>
map Q :q<CR>
map ZZ :wa<CR>:qa!<CR>

" Clear search highlight result until next search
nnoremap <LEADER>c :noh<CR>

" LeaderF
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1

let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

" -------------- options -------------------
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on 
set tabstop=2 shiftwidth=2 expandtab softtabstop

" editor
set number " show relative numbers for all except for current:w
set relativenumber
set ignorecase " ignore case unless there is a capitalized letter
set smartcase
set autoread " automatically load changed files when open
set noswapfile " do not want swap files
set belloff=all " stop annoying sounds"
set colorcolumn=100

set listchars=tab:\|\ 
set list
set wildmenu
set so=10
set encoding=utf-8
set autoindent
set cindent

set foldmethod=indent
set nofoldenable
set foldlevelstart=99
set foldlevel=99

set mouse=
set completeopt=menu,menuone,noselect


" indentLine
let g:indentLine_char = '│'
