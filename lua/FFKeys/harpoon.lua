local harpoon = require("harpoon")
local wk = require("which-key")

wk.add({
	{ "<leader>a", function() harpoon:list():add() end,         desc = "Add File to Harpoon", mode = "n" },
	{ "<C-a>",     ":Neotree harpoon-buffers reveal float<CR>", desc = "Harpoon Menu",        mode = "n" },

	{ "<leader>1", function() harpoon:list():select(1) end,     desc = "Harpoon Entry 1",     mode = "n" },
	{ "<leader>2", function() harpoon:list():select(2) end,     desc = "Harpoon Entry 2",     mode = "n" },
	{ "<leader>3", function() harpoon:list():select(3) end,     desc = "Harpoon Entry 3",     mode = "n" },
	{ "<leader>4", function() harpoon:list():select(4) end,     desc = "Harpoon Entry 4",     mode = "n" },
	{ "<leader>5", function() harpoon:list():select(5) end,     desc = "Harpoon Entry 5",     mode = "n" },
})


--vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)

-- Old Keybind, I use Neotree for this now
--vim.keymap.set("n", "<C-a>", function() harpoon.ui:toggle_:aquick_menu(harpoon:list()) end)
--vim.keymap.set("n", "<C-a>", ":Neotree harpoon-buffers revea:al float<CR>", {})

--vim.keymap.set("n", "<leader>1", function() harpoon:list():s:aelect(1) end)
--vim.keymap.set("n", "<leader>2", function() harpoon:list():s:aelect(2) end)
--vim.keymap.set("n", "<leader>3", function() harpoon:list():s:aelect(3) end)
--vim.keymap.set("n", "<leader>4", function() harpoon:list():s:aelect(4) end)
--vim.keymap.set("n", "<leader>5", function() harpoon:list():s:aelect(5) end)
