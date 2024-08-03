local harpoon = require("harpoon")
local harpoonEx = require("harpoonEx")


-- Get Half of the Window Width rounded up
local getWidth = function()
	local x = (vim.api.nvim_win_get_width(0) / 2)
	return math.floor(x + .5)
end

harpoon:setup({

	harpoon:extend(harpoonEx.extend())

	--menu = {
	--	width = getWidth(),
	--},
	--global_settings = {
	--	tabline = true,
	--},
})

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)

-- Old Keybind, I use Neotree for this now
--vim.keymap.set("n", "<C-a>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<C-a>", ":Neotree harpoon-buffers reveal float<CR>", {})

vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end)
