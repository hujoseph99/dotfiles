local adm_status_ok, adm = pcall(require, "auto-dark-mode")
if not adm_status_ok then
	return
end

adm.setup({
	set_dark_mode = function()
		vim.api.nvim_set_option('background', 'dark')
		vim.cmd('colorscheme onedark')
	end,
	set_light_mode = function()
		vim.api.nvim_set_option('background', 'light')
		vim.cmd('colorscheme catppuccin')
		-- vim.api.nvim_set_option('background', 'light')
		-- vim.cmd("let g:gruvbox_material_background='light'")
		-- vim.cmd("let g:gruvbox_material_better_performance=1")
		-- vim.cmd('colorscheme gruvbox-material')
	end,
})
adm.init()
