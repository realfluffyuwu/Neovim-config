-- Disable Codeium Bindings
-- since I have my own
vim.g.codeium_disable_bindings = 1

vim.cmd [[
	hi link CodeiumSuggestionFloat Pmenu
	hi link CodeiumSuggestionFloatBorder Pmenu
]]

-- Accept codeium suggestion
vim.keymap.set("i", "<Tab>", function() return vim.fn["codeium#Accept"]() end, { expr = true, silent = true })
-- Clear codeium suggestion
vim.keymap.set("i", "<C-BS>", function() return vim.fn["codeium#Clear"]() end, { expr = true, silent = true })

-- Launch Codeium Chat
vim.keymap.set("n", "<leader>cc", function() return vim.fn["codeium#Chat"]() end, { expr = true, silent = true })

-- Cycle through suggestions both ways
vim.keymap.set("i", "<C-Right>", function() return vim.fn["codeium#CycleCompletions"](1) end,
	{ expr = true, silent = true })
vim.keymap.set("i", "<C-Left>", function() return vim.fn["codeium#CycleCompletions"](-1) end,
	{ expr = true, silent = true })
