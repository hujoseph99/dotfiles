local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
	debug = false,
	sources = {
		diagnostics.eslint_d,
		code_actions.eslint_d,
		formatting.eslint_d,
		formatting.prettierd,
		formatting.stylua,
		diagnostics.shellcheck,
		code_actions.shellcheck,
	},
})
