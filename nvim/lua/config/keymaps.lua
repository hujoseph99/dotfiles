-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- disabled keymapsl
vim.keymap.del("n", "<leader>l") -- lazy
vim.keymap.del("n", "<leader>cd") -- inline diagnostic

local keymap = vim.keymap.set
keymap("n", "gl", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
keymap("n", "<leader>/", "gcc", { desc = "line comment" })
keymap("v", "<leader>/", "gc", { desc = "line comment visual mode" })
keymap({ "n", "v" }, "<leader>lf", function()
  LazyVim.format({ force = true })
end, { desc = "Format" })

-- My keymaps
--  ==========================
--  =     text navigation    =
--  ==========================
keymap({ "n", "v" }, "J", "10j")
keymap({ "n", "v" }, "K", "10k")
keymap({ "n", "v" }, "L", "$")
keymap({ "n", "v" }, "H", "^")

--  ==========================
--  =      split screen      =
--  ==========================
-- creation
keymap("n", "<leader>wl", "<cmd>set splitright<CR><cmd>vsplit<CR>")
keymap("n", "<leader>wh", "<cmd>set nosplitright<CR><cmd>vsplit<CR>")
keymap("n", "<leader>wk", "<cmd>set nosplitbelow<CR><cmd>split<CR>")
keymap("n", "<leader>wj", "<cmd>set splitbelow<CR><cmd>split<CR>")

-- navigation
keymap("n", "<leader>hh", "<C-w>h")
keymap("n", "<leader>ll", "<C-w>l")
keymap("n", "<leader>kk", "<C-w>k")
keymap("n", "<leader>jj", "<C-w>j")

-- Adjust splitted screen size
keymap("n", "<up>", "<cmd>res  +5<CR>")
keymap("n", "<down>", "<cmd>res -5<CR>")
keymap("n", "<right>", "<cmd>vertical resize+5<CR>")
keymap("n", "<left>", "<cmd>vertical resize-5<CR>")

--  ==========================
--  =      moving text       =
--  ==========================
-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

keymap("v", "J", "10j")
keymap("v", "K", "10k")

--  ==========================
--  ==========================
--  =          misc          =
--  ==========================
-- copying
keymap("n", "Y", "y$")
keymap("v", "Y", '"+y') -- copy to system clipboard in visual mode
keymap("n", "<leader>Y", 'gg0vG$"+y') -- copy whole file

-- saving file
keymap("n", "W", "<cmd>w<CR>")
keymap("n", "Q", "<cmd>Bwipeout!<CR>")
keymap("n", "<leader>q", "<cmd>q<CR>")
keymap("n", "ZZ", "<cmd>wa<CR><cmd>qa!<CR>", { desc = "Close and save all files" })
keymap("n", "ZQ", "<cmd>qa!<CR>", { desc = "Close all files without saving" })
keymap("n", "ZB", function()
  local bufs = vim.api.nvim_list_bufs()
  local current_buf = vim.api.nvim_get_current_buf()
  for _, i in ipairs(bufs) do
    if i ~= current_buf then
      require("bufdelete").bufdelete(i, true)
    end
  end
end, { desc = "Close all buffers but the current one" })

-- folding
keymap("n", "zv", "za")

-- clear highlight for searches
keymap("n", "<leader>cl", "<cmd>noh<CR>")

-- copy file path
keymap("n", "<leader>fp", '<cmd>let @+ = expand("%")<cr>')

-- Neotree
keymap("n", "<leader>e", "<cmd>Neotree toggle<CR>")
keymap("n", "ge", "<cmd>Neotree reveal_force_cwd<CR>")

keymap("n", "cw", "caw")
keymap("n", "dw", "daw")
keymap("n", "<leader>sv", "<cmd>source $MYVIMRC<CR>")
