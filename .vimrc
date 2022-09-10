let mapleader=" "

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
nnoremap <leader>Y gg"+yG

" Copy to system clipboard
vnoremap Y "+y

nnoremap <silent> <leader>gk :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

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

" Insert a new line without entering insert mode
nnoremap <LEADER>o o<ESC>
nnoremap <LEADER>O O<ESC>

" Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" use <c-space>for trigger completion
inoremap <silent><expr> <NUL> coc#refresh()

" use <tab> and <s-tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Folding
nmap B za

" -------------- editor -------------------
set number " show relative numbers for all except for current:w
set relativenumber
set ignorecase " ignore case unless there is a capitalized letter
set smartcase
set autoread " automatically load changed files when open
set noswapfile " do not want swap files
set belloff=all " stop annoying sounds"

set listchars=tab:\|\ 
set list
set wildmenu
set so=10
set encoding=utf-8
set autoindent
set cindent

set foldmethod=indent
set foldlevelstart=99

" ------------------- plugins stuff ------------------- 
call plug#begin()

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'airblade/vim-gitgutter'

" Comments
Plug 'tpope/vim-commentary'

" icons
Plug 'ryanoasis/vim-devicons'

Plug 'sickill/vim-monokai'
Plug 'joshdick/onedark.vim'

" start screen for vim
Plug 'mhinz/vim-startify'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call plug#end()

" -------------- color scheme settings --------------------
syntax enable
syntax on
" for vim 8
if (has("termguicolors"))
    set termguicolors
endif
colorscheme monokai

" -------------- options -------------------
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on 
set tabstop=2 shiftwidth=2 expandtab softtabstop

" -------------- airline settings --------------------
let g:airline_theme='onedark'

