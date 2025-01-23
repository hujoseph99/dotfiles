local status_ok, whichkey = pcall(require, "which-key")
if not status_ok then
	return
end

local builtin_status_ok, builtin = pcall(require, "telescope.builtin")
if not builtin_status_ok then
	return
end

local keymap = vim.keymap.set
keymap("n", "<leader>?", ":WhichKey<CR>")

-- vim.o.timeout = true
-- vim.o.timeoutlen = 300
require("which-key").setup({
	plugins = {
		marks = false, -- shows a list of your marks on ' and `
		registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
		spelling = {
			enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
		},
		presets = {
			operators = false, -- adds help for operators like d, y, ...
			motions = false, -- adds help for motions
			text_objects = false, -- help for text objects triggered after entering an operator
			windows = false, -- default bindings on <c-w>
			nav = false, -- misc bindings to work with windows
		},
	},
	popup_mappings = {
		scroll_down = "J", -- binding to scroll down inside the popup
		scroll_up = "K", -- binding to scroll up inside the popup
	},
	ignore_missing = true,
	triggers = "",
})

whichkey.register({
	["<leader>"] = {
		name = "leader",
		l = {
			name = "LSP functions",
			i = { "<cmd>LspInfo<CR>", "lsp info" },
			I = { "<cmd>LspInstallInfo<CR>", "lsp install info" },
			a = { vim.lsp.buf.code_action, "code actions" },
			j = {
				function()
					vim.diagnostic.goto_next({ buffer = 0 })
				end,
				"diagnostic next",
			},
			k = {
				function()
					vim.diagnostic.goto_prev({ buffer = 0 })
				end,
				"diagnostic prev",
			},
			r = { vim.lsp.buf.rename, "rename" },
			s = { vim.lsp.buf.signature_help, "signature help" },
			q = { builtin.diagnostics, "diagnostics" },
			l = { "<C-w>l", "window right" },
		},
		s = {
			name = "sessions + split screen",
			a = { ":SessionManager load_session<CR>", "load session" },
			d = { ":SessionManager delete_session<CR>", "delete session" },
			s = { ":SessionManager save_current_session<CR>", "save session" },
			l = { ":set splitright<CR>:vsplit<CR>", "split right" },
			h = { ":set nosplitright<CR>:vsplit<CR>", "split left" },
			k = { ":set nosplitbelow<CR>:split<CR>", "split down" },
			j = { ":set splitbelow<CR>:split<CR>", "split up" },
		},
		c = {
			name = "clear highlight",
			l = { ":noh<CR>", "clear highlight" },
			s = { "", "toggle onedark style"}
		},
		f = {
			name = "format",
			f = { builtin.find_files, "find file" },
			g = { builtin.live_grep, "grep files" },
			b = { builtin.buffers, "find buffers" },
			h = { builtin.help_tags, "help tags" },
		},
		h = {
			name = "window left",
			h = { "<C-w>h", "window left" },
		},
		k = {
			name = "window up",
			k = { "<C-w>k", "window up" },
		},
		j = {
			name = "window down",
			j = { "<C-w>j", "window down" },
		},
		Y = { "gg0vG$\"+y'", "copy whole file" },
		q = { ":q<CR>", "close tab" },
		e = { ":Neotree toggle<CR>", "neotree toggle" },
	},
	g = {
		name = "LSP jumps",
		D = { vim.lsp.buf.declaration, "jump to declaration" },
		k = { vim.lsp.buf.hover, "show details" },
		l = { vim.diagnostic.open_float, "show inline diagnostics" },
		r = { builtin.lsp_references, "find references" },
		i = { builtin.lsp_implementations, "find implementations" },
		d = { builtin.lsp_definitions, "find definitions" },
		t = { builtin.lsp_type_definitions, "find type definitions" },
	},
	Z = {
		name = "closing files",
		b = { ":%d|e#<cr>", "Close all buffers but the current one -- https://stackoverflow.com/a/42071865/516188"},
		Z = { ":wa<CR>:qa!<cr>", "save then quit all" },
		Q = { ":qa!<cr>", "force quit all" },
	},
})
