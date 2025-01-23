return {
  "neovim/nvim-lspconfig",
  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = { "<leader>cl", false }
    keys[#keys + 1] = { "gk", vim.lsp.buf.hover, desc = "Hover" }
    keys[#keys + 1] = { "<leader>la", vim.lsp.buf.code_action, desc = "Code Action"}
    keys[#keys + 1] = { "<leader>lr", vim.lsp.buf.rename, desc = "Rename" }
    keys[#keys + 1] = { "<leader>lR", function () Snacks.rename.rename_file() end, desc = "Rename File" }
  end,
}
