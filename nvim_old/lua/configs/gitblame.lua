local blame_ok, blame = pcall(require, "gitblame")
if not blame_ok then
	return
end

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
keymap("n", "<leader>gt", "<cmd>GitBlameToggle<CR>", opts)
keymap("n", "<leader>go", "<cmd>:GitBlameOpenCommitURL<CR>", opts)

vim.g.gitblame_date_format = "%r"
vim.g.gitblame_message_format = "<summary> • <date> • <author>"
