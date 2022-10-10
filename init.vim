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

" GitGutter navigate hunks
nmap <leader>h] <Plug>(GitGutterNextHunk)
nmap <leader>h[ <Plug>(GitGutterPrevHunk)
nmap <leader>ht :GitGutterToggle<CR>

" Copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Commentary
nmap <leader>cc <Plug>CommentaryLine
vmap <leader>cc <Plug>CommentaryLine

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

" Insert a new line without entering insert mode
nnoremap <LEADER>o o<ESC>
nnoremap <LEADER>O O<ESC>

" ------------------- COC STUFF ----------------------
" use <tab> and <s-tab> to navigate the completion list
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> gk :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
set updatetime=1000

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>qq  <Plug>(coc-codeaction-selected)
nmap <leader>qq  <Plug>(coc-codeaction-selected)

nmap <leader>a  <leader>qqaw
xmap <leader>a  <leader>qqaw

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap <C-j> and <C-k> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-j>"
  nnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-k>"
  inoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-j>"
  vnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-k>"
endif

" ------------------- END COC STUFF ----------------------

" Fugitive
nmap <leader>gb :Git blame<CR>

" LeaderF
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1

let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>rg :Leaderf rg<CR>



" -------------- vimtex -------------------
noremap tsf <plug>(vimtex-cmd-toggle-frac)
noremap tsc <plug>(vimtex-cmd-toggle-star)
noremap tse <plug>(vimtex-env-toggle-star)
noremap ts <plug>(vimtex-env-toggle-math)
noremap tst <plug>(vimtex-env-surround-line)
vnoremap tst <plug>(vimtex-env-surround-visual)
noremap tsd <plug>(vimtex-delim-toggle-modifier)
noremap tsD <plug>(vimtex-delim-toggle-modifier-reverse)

augroup vimtex_config
  autocmd User VimtexEventInitPost VimtexCompile
augroup END

" -------------- options -------------------
let g:tex_flavor = 'latex'
let g:vimtex_syntax_conceal_disable=1
noremap <leader>lk <plug>(vimtex-compile)

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

" ------------------- plugins stuff ------------------- 
call plug#begin()

" Shows undo tree for text edits to a file
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'

" Comments
Plug 'tpope/vim-commentary'

" icons
Plug 'ryanoasis/vim-devicons'

" Easu toggle for terminal in vim
Plug 'akinsho/toggleterm.nvim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'sickill/vim-monokai'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/everforest'
Plug 'sainnhe/gruvbox-material'

" start screen for vim
Plug 'mhinz/vim-startify'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Latex
Plug 'lervag/vimtex'

" Fuzzy finder for locating files, buffers, etc.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " Typescript support
Plug 'peitalin/vim-jsx-typescript' " JS and JSX syntax

" For generating and displaying ctags in vim
Plug 'preservim/tagbar'
Plug 'universal-ctags/ctags'

" All of your Plugins must be added before the following line
call plug#end()

" CoC settings 
let g:coc_global_extensions = [
  \ 'coc-clangd',
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-explorer',
	\ 'coc-gitignore',
  \ 'coc-lists',
	\ 'coc-git',
	\ 'coc-html',
  \ 'coc-import-cost',
	\ 'coc-jest',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-prettier',
	\ 'coc-stylelint',
	\ 'coc-eslint',
  \ 'coc-java',
	\ 'coc-vimlsp']

" Tree-sitter lua setup
lua <<EOF
require("nvim-treesitter.configs").setup{
  ignore_install = { "latex" },
  ensure_installed = { "go", "html", "javascript", "json", "regex", "typescript", "vue", "java", 
    "scala"
  },
  indent = {
    enable = true
  },
  highlight = {
    enable = true,
  },
}
EOF

" Toggleterm
lua <<EOF
require("toggleterm").setup{
  size = 20,
  open_mapping = [[<c-\>]],
  direction = 'float',
}

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\>]], opts)
end
EOF

" CoC explorer options
let g:coc_explorer_global_presets = {
\   '.nvim': {
\     'root-uri': '~/.config/nvim',
\   },
\   'cocConfig': {
\      'root-uri': '~/.config/coc',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'tab:$': {
\     'position': 'tab:$',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\ }

nmap <space>ee <Cmd>CocCommand explorer<CR>
nmap <space>ef <Cmd>CocCommand explorer --preset floating<CR>
nmap <space>ed <Cmd>CocCommand explorer --preset .nvim<CR>

" Use preset argument to open it
"nmap <space>ec <Cmd>CocCommand explorer --preset cocConfig<CR>
"nmap <space>eb <Cmd>CocCommand explorer --preset buffer<CR>

" List all presets
"nmap <space>el <Cmd>CocList explPresets<CR>

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

" startify
let g:startify_bookmarks = [ {'c': '~/.config/nvim/init.vim'}, { 'z': '~/.zshrc' } ]

" indentLine
let g:indentLine_char = '│'

autocmd Filetype json
  \ let g:indentLine_setConceal = 0 |
  \ let g:vim_json_syntax_conceal = 0


" -------------- color scheme settings --------------------
syntax enable
syntax on
" for vim 8
if (has("termguicolors"))
    set termguicolors
endif

" set background=light
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_foreground = 'material'
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material

" -------------- airline settings --------------------
let g:airline_theme = 'gruvbox_material'

