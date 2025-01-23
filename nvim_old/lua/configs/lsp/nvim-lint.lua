local status_ok, lint = pcall(require, "lint")
if not status_ok then
	return
end

-- currently using eslint_d@13.1.2 using npm install -g eslint_d@13.1.2
-- https://github.com/mfussenegger/nvim-lint/issues/462
-- Once the monorepo switches to using different version of eslint, can go back to using Mason
-- for eslint_d
lint.linters_by_ft = {
	typescript = { "eslint_d" },
	javascript = { "eslint_d" },
	javascriptreact = { "eslint_d" },
	typescriptreact = { "eslint_d" },
}

local eslint = lint.linters.eslint_d

eslint.args = {
	"--format",
	"json",
	"--stdin",
	"--stdin-filename",
	function()
		return vim.api.nvim_buf_get_name(0)
	end,
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
	callback = function()
		lint.try_lint()
	end,
})

vim.keymap.set("n", "<leader>lL", function()
	lint.try_lint()
end)
