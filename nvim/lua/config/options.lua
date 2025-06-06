-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.g.snacks_animate = false
vim.g.autoformat = false
vim.g.lazyvim_picker = "auto"
-- vim.g.ai_cmp = false

local opt = vim.opt
opt.autowrite = false
opt.clipboard = ""
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp" }
opt.mouse = ""
opt.swapfile = false
