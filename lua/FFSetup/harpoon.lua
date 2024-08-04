local harpoon = require("harpoon")
local harpoonEx = require("harpoonEx")

-- Get Half of the Window Width rounded up
local getWidth = function()
	local x = (vim.api.nvim_win_get_width(0) / 2)
	return math.floor(x + .5)
end

harpoon:setup({ harpoon:extend(harpoonEx.extend()) })
