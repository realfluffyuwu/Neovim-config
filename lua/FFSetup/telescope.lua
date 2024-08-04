require("telescope").setup {
	extensions = {
		file_browser = {
			theme = "ivy",
			hijack_netrw = false
		}
	}
}
require("telescope").load_extension "file_browser"
