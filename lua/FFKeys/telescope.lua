require("telescope").setup {
	extensions = {
		file_browser = {
			theme = "ivy",
			hijack_netrw = true
		}
	}
}

local builtin = require("telescope.builtin")
require("telescope").load_extension "file_browser"
--local TfileBrowser = require("telescope").extensions.file_browser.file_browser

vim.keymap.set("n", "<leader>sf", builtin.live_grep, {})
--vim.keymap.set("n", "<leader><leader>", builtin.find_files, {})
vim.keymap.set("n", "<leader><leader>", ":Neotree filesystem reveal float<CR>", {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, {})

vim.keymap.set("n", "/", function()
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
		winblend = 10,
		previewer = false,
	})
end)


--vim.api.nvim_set_keymap(
--	"n",
--	"<space>m",
--	":Telescope file_browser path=%:p:h select_buffer=true<CR>",
--	{ noremap = true }
--)

--local builtin = require("telescope.builtin")
--vim.keymap.set("n", "<leader>fs", builtin.find_files, {})
--vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
--vim.keymap.set("n", "<leader>gs", function()
--	builtin.grep_string({search = vim.fn.input("Grep > ")})
--end)
