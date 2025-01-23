local status_ok, illuminate = pcall(require, "illuminate")
if not status_ok then
	return
end

illuminate.configure({
	providers = {
		"lsp",
		"treesitter",
		"regex",
	},
	-- delay: delay in milliseconds
	delay = 100,
})

-- change the highlight style
vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "CursorLine" })
vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "CursorLine" })
vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "CursorLine" })

--- auto update the highlight style on colorscheme change
vim.api.nvim_create_autocmd({ "ColorScheme" }, {
  pattern = { "*" },
  callback = function(ev)
    vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "CursorLine" })
    vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "CursorLine" })
    vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "CursorLine" })
  end
})
