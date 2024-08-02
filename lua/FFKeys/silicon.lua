require("nvim-silicon").setup({
	font = "ProFont IIx Nerd Font Mono",
	background_image = nil,
	theme = "DarkNeon",
	pad_horiz = 0,
	pad_vert = 0,
	to_clipboard = true,
	no_round_corner = true,
	no_window_controls = true,
	window_title = function()
		return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
	end,
})
