-- Load my Normal Nvim Settings
require("FFKeys.basicSettings")

-- Load my Plugin Settings
require("FFKeys.codeium")
require("FFKeys.colorpicker")
require("FFKeys.harpoon")

-- Name Spaces for Each Module

-- Telescope
local Telescope = require("telescope.builtin")
local TelescopeThemes = require("telescope.themes")


-- Functions

-- Telescope Fuzzy Find in File
local fuzzyFindFile = function()
	Telescope.find_files(TelescopeThemes.get_dropdown {
		winblend = 10,
		previewer = false,
	})
end

-- Fuzzy Find
vim.keymap.set("n", "/", fuzzyFindFile, { silent = true })

-- Live Grep
vim.keymap.set("n", "<leader>sf", Telescope.live_grep, {})

-- Filesystem
vim.keymap.set("n", "<leader><leader>", ":Neotree filesystem reveal float<CR>", { silent = true })

-- Show Buffers
vim.keymap.set("n", "<leader>fb", ":Neotree buffers reveal float<CR>", { silent = true })

-- Keys to switch between buffers
vim.keymap.set("n", "<A-Right>", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<A-Left>", ":bprev<CR>", { silent = true })

-- Delete Buffer
vim.keymap.set("n", "<A-d>", ":bd<CR>", { silent = true })

-- Diagnostics
vim.keymap.set("n", "<leader>sd", Telescope.diagnostics, {})

-- Undo Tree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Git
vim.keymap.set("n", "<leader>gs", ":Neotree git_status reveal float<CR>", {})
