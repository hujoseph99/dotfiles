--  ==========================
--  =        packer          =
--  ==========================
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({
			"git",
			"clone",
			"--depth",
			"1",
			"https://github.com/wbthomason/packer.nvim",
			install_path,
		})
		vim.cmd([[ packadd packer.nvim ]])
		return true
	end
	return false
end

-- ensures that packer will be automatically installed if it's not already automatically installed
local packer_bootstrap = ensure_packer()

-- ensures that plugins are reloaded and packer is updated upon saving plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

return packer.startup({
	function(use)
		use("wbthomason/packer.nvim")
		use("nvim-lua/plenary.nvim")
		use("nvim-tree/nvim-web-devicons")
		use("MunifTanjim/nui.nvim")

		-- smart indentation detection
		use("Darazaki/indent-o-matic")

		-- TODO: investigate smart splits

		-- TODO: investigate barbar/barline, do I even need them
		use("f-person/git-blame.nvim")

		-- file tree
		use({
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v2.x",
			setup = function()
				vim.g.neo_tree_remove_legacy_commands = true
			end,
		})

		-- lualine
		use("nvim-lualine/lualine.nvim")

		-- tree sitter
		use({
			"nvim-treesitter/nvim-treesitter",
			run = function()
				local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
				ts_update()
			end,
		})
		use("windwp/nvim-ts-autotag")                    -- Autoclose tags
		use("JoosepAlviste/nvim-ts-context-commentstring") -- Context based commenting
		-- use("p00f/nvim-ts-rainbow")                      -- rainbow

		use("chentoast/marks.nvim")

		-- ==== snippets ====
		use("rafamadriz/friendly-snippets")
		use("L3MON4D3/LuaSnip")

		-- ==== LSP stuff ====
		use("neovim/nvim-lspconfig")
		use("hrsh7th/nvim-cmp")
		use("hrsh7th/cmp-nvim-lsp")
		use("saadparwaiz1/cmp_luasnip")
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-path")
		use("onsails/lspkind.nvim")

		-- mason
		use("williamboman/mason.nvim")
		use("williamboman/mason-lspconfig.nvim")

		-- formatting and diagnostics
		use("jose-elias-alvarez/null-ls.nvim")

		-- highlighting references
		use("RRethy/vim-illuminate")

		-- ==== Telescope ====
		use({
			"nvim-telescope/telescope.nvim",
			tag = "0.1.1",
		})
		use({
			"nvim-telescope/telescope-fzf-native.nvim",
			run =
			"cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
		})
		use({ "nvim-telescope/telescope-ui-select.nvim" })

		-- auto pairing
		use("windwp/nvim-autopairs")

		-- commenting
		use("numToStr/Comment.nvim")

		-- git signs
		use("lewis6991/gitsigns.nvim")

		-- bufferline
		use("akinsho/bufferline.nvim")
		use("moll/vim-bbye")

		-- session management
		use("Shatur/neovim-session-manager")

		use({
			"lukas-reineke/indent-blankline.nvim",
			config = function()
				require("indent_blankline").setup({})
			end,
		})

		use({
			"habamax/vim-godot",
		})

		use({
			"folke/which-key.nvim",
		})

		-- colorschemes
		use("sickill/vim-monokai")
		use("navarasu/onedark.nvim")
		use { "catppuccin/nvim", as = "catppuccin" }
		use("sainnhe/everforest")
		use("sainnhe/gruvbox-material")

		-- Automatically set up your configuration after cloning packer.nvim
		-- Put this at the end after all plugins
		if packer_bootstrap then
			require("packer").sync()
		end
	end,
	config = {
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
		},
	},
})
