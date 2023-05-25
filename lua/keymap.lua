vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- local keymap = vim.keymap.set
local keymap = vim.keymap.set


--  ==========================
--  =     text navigation    =
--  ==========================
keymap('n', 'J', '10j')
keymap('n', 'K', '10k')

--  ==========================
--  =   buffer navigation    =
--  ==========================
keymap("n", "L", ":bnext<CR>")
keymap("n", "H", ":bprevious<CR>")

--  ==========================
--  =      split screen      =
--  ==========================
-- creation
keymap('n', '<leader>sl', ':set splitright<CR>:vsplit<CR>')
keymap('n', '<leader>sh', ':set nosplitright<CR>:vsplit<CR>')
keymap('n', '<leader>sk', ':set nosplitbelow<CR>:split<CR>')
keymap('n', '<leader>sj', ':set splitbelow<CR>:split<CR>')

-- navigation
keymap('n', '<leader>hh', '<C-w>h')
keymap('n', '<leader>ll', '<C-w>l')
keymap('n', '<leader>kk', '<C-w>k')
keymap('n', '<leader>jj', '<C-w>j')

-- Adjust splitted screen size
keymap('n', '<up>', ':res  +5<CR>')
keymap('n', '<down>', ':res -5<CR>')
keymap('n', '<right>', ':vertical resize+5<CR>')
keymap('n', '<left>', ':vertical resize-5<CR>')

 

--  ==========================
--  =      moving text       =
--  ==========================
-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Move text up and down
keymap("v", "J", ":m .+1<CR>==")
keymap("v", "K", ":m .-2<CR>==")

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv")
keymap("x", "K", ":move '<-2<CR>gv-gv")
--  ==========================
--  =          misc          =
--  ==========================
-- copying
keymap('n', 'Y', 'y$')
keymap('v', 'Y', '"+y') -- copy to system clipboard in visual mode
keymap('n', '<leader>Y', 'gg0vG$"+y') -- copy whole file

-- saving file
keymap('n', 'W', ':w<CR>')
keymap('n', 'Q', ':Bdelete!<CR>')
keymap('n', '<leader>q', ':q<CR>')
keymap('n', 'ZZ', ':wa<CR>:qa!<CR>')
keymap('n', 'ZQ', ':qa!<CR>')

-- folding
keymap('n', 'zv', 'za')

-- clear highlight for searches
keymap('n', '<leader>cl', ':noh<CR>')

-- Neotree
keymap('n', '<leader>e', ':Neotree toggle<CR>')
keymap('n', 'ge', ':Neotree reveal_force_cwd<CR>')

keymap('n', 'cw', 'caw')
keymap('n', 'dw', 'daw')
keymap('n', '<leader>sv', ':source $MYVIMRC<CR>')
