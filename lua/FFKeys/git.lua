--vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
--vim.keymap.set("n", "<leader>g<Left>", ":Neotree git_status left<CR>")
--vim.keymap.set("n", "<leader>g<Right>", ":Neotree git_status right<CR>")
vim.keymap.set("n", "<leader>gs", ":Neotree git_status reveal float<CR>", {})
