-- init.lua or lua/custom/mappings.lua

-- Set up Colemak mappings for window navigation
-- Colemak mappings for window navigation
vim.api.nvim_set_keymap("n", "<C-n>", "<C-w>h", { noremap = true, silent = true, desc = "Move to left window" })
vim.api.nvim_set_keymap("n", "<C-e>", "<C-w>j", { noremap = true, silent = true, desc = "Move to bottom window" })
vim.api.nvim_set_keymap("n", "<C-i>", "<C-w>k", { noremap = true, silent = true, desc = "Move to top window" })
vim.api.nvim_set_keymap("n", "<C-o>", "<C-w>l", { noremap = true, silent = true, desc = "Move to right window" })
