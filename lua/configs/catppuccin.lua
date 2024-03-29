local status_ok, catppuccin = pcall(require, "catppuccin")
if not status_ok then
  return
end

catppuccin.setup({
  flavour = "latte", -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = "latte",
    dark = "latte",
  },
})

vim.cmd.colorscheme "catppuccin"
