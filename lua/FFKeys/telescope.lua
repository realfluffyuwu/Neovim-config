require("telescope").setup {
	extensions = {
		file_browser = {
			theme = "ivy",
			hijack_netrw = true
		}
	}
}

require("telescope").load_extension "file_browser"

--vim.api.nvim_set_keymap(
--	"n",
--	"<space>fs",
--	":Telescope file_browser<CR>",
--	{ noremap = true }
--)

vim.api.nvim_set_keymap(
  "n",
  "<space>fs",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)
--local builtin = require("telescope.builtin")
--vim.keymap.set("n", "<leader>fs", builtin.find_files, {})
--vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
--vim.keymap.set("n", "<leader>gs", function()
--	builtin.grep_string({search = vim.fn.input("Grep > ")})
--end)
