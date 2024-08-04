-- Width of Window
local getWidth = function()
	local x = (vim.api.nvim_win_get_width(0) / 2)
	return math.floor(x + .5)
end

-- get Harpoon Buffers
local getHarpoonBuffers = function()
	local harpoon = require("harpoon")
	harpoon.list()
end

require('lualine').setup({
	options = {
		theme = "iceberg_dark",
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		icons_enabled = true,
		always_divide_middle = true,
		refresh = {
			statusline = 500,
			tabline = 500,
			winbar = 500,
		}
	},

	tabline = {
		lualine_a = {
			{
				"buffers",
				show_filename_only = true,
				mode = 0,
				filetype_names = {
					mason = "Mason",
					fzf = "FZF",
					alpha = "Dashboard",
					neo_tree = "NeoTree",
					fugitive = "Git",
					[""] = "Empty",
				},
			},
		},
	},
	extenstions = {
		"neo-tree",
		"mason",
		"fzf",
	}
})
