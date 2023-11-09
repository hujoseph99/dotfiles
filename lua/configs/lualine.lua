local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
	return
end

local function diff_source()
	local gitsigns = vim.b.gitsigns_status_dict
	if gitsigns then
		return {
			added = gitsigns.added,
			modified = gitsigns.changed,
			removed = gitsigns.removed
		}
	end
end

lualine.setup({
	options = {
		component_separators = "|",
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = {
			{
				"branch",
				fmt = function(str)
					return str:sub(1, 40)
				end,
			},
			{ 'diff', source = diff_source },
			"diagnostics",
		},
		lualine_c = {
			{
				"filename",
				file_status = true, -- Displays file status (readonly status, modified status)
				newfile_status = false, -- Display new file status (new file means no write after created)
				path = 1,           -- 0: Just the filename
				-- 1: Relative path
				-- 2: Absolute path
				-- 3: Absolute path, with tilde as the home directory
				-- 4: Filename and parent dir, with tilde as the home directory

				shorting_target = 40, -- Shortens path to leave 40 spaces in the window
				-- for other components. (terrible name, any suggestions?)
				symbols = {
					modified = "[+]", -- Text to show when the file is modified.
					readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
					unnamed = "[No Name]", -- Text to show for unnamed buffers.
					newfile = "[New]", -- Text to show for newly created file before first write
				},
			},
		},
		lualine_x = {
			{
				function()
					local is_loaded = vim.api.nvim_buf_is_loaded
					local tbl = vim.api.nvim_list_bufs()
					local loaded_bufs = 0
					for i = 1, #tbl do
						if is_loaded(tbl[i]) then
							loaded_bufs = loaded_bufs + 1
						end
					end
					return loaded_bufs
				end,
				icon = "﬘",
			},
		},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
