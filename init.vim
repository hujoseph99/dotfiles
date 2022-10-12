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

set mouse=

" indentLine
let g:indentLine_char = '│'


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

Plug 'sickill/vim-monokai'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/everforest'
Plug 'sainnhe/gruvbox-material'

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

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" All of your Plugins must be added before the following line
call plug#end()

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

" -------------- LSP stuff --------------------
set completeopt=menu,menuone,noselect

lua <<EOF
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gk', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', 'gR', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
  debounce_text_changes = 150,
}

-------------- autocomplete stuff --------------------
-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-k>'] = cmp.mapping.scroll_docs(-4),
    ['<C-j>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ['<Tab>'] = 
      function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end,
    ['<S-Tab>'] = 
      function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end,
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require('lspconfig')['pyright'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities
}
require('lspconfig')['pyright'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities
}
EOF

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

