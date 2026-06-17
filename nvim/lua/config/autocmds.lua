-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     Snacks.dashboard()
--   end,
-- })

function ToggleBackgroundAndColorscheme()
  if vim.o.background == "light" then
    vim.o.background = "dark"
    vim.cmd("colorscheme tokyonight") -- Change this to your preferred dark theme
  else
    vim.o.background = "light"
    vim.cmd("colorscheme catppuccin-latte") -- Change this to your preferred light theme
  end
end

-- Create a command :cb that runs the toggle function
vim.api.nvim_create_user_command("ChangeBackground", ToggleBackgroundAndColorscheme, {})
