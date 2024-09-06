local keymap = vim.keymap.set

keymap("n", "<leader>cs", ":Copilot setup<CR>")
keymap("n", "<leader>ce", ":Copilot enable<CR>")
keymap("n", "<leader>ce", ":Copilot disable<CR>")
keymap("n", "<leader>cp", ":Copilot panel<CR>")
keymap("i", "<M-/>", "<Plug>(copilot-suggest)")
keymap("i", "<M-p>", "<Plug>(copilot-dismiss)")
keymap("i", "<M-[>", "<Plug>(copilot-next)")
keymap("i", "<M-]>", "<Plug>(copilot-previous)")
