-- init.lua or lua/custom/mappings.lua

-- Set up Colemak mappings for window navigation
--
-- Colemak mappings for window navigation
vim.api.nvim_set_keymap("n", "<C-n>", "<C-w>h", { noremap = true, silent = true, desc = "Move to left window" })
vim.api.nvim_set_keymap("n", "<C-e>", "<C-w>j", { noremap = true, silent = true, desc = "Move to bottom window" })
vim.api.nvim_set_keymap("n", "<C-i>", "<C-w>k", { noremap = true, silent = true, desc = "Move to top window" })
vim.api.nvim_set_keymap("n", "<C-o>", "<C-w>l", { noremap = true, silent = true, desc = "Move to right window" })

-- Unmap conflicting keys in normal mode
vim.api.nvim_del_keymap("n", "gc")
vim.api.nvim_del_keymap("n", "gb")

-- Reassign gc and gb for comment toggling if using a comment plugin like comment.nvim
vim.api.nvim_set_keymap("n", "gc", "<Plug>(comment_toggle_linewise)", { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "gb", "<Plug>(comment_toggle_blockwise)", { noremap = false, silent = true })

-- Custom command to open WhichKey with a specific leader key
vim.api.nvim_set_keymap("n", "<Leader>?", ":WhichKey<CR>", { noremap = true, silent = true })
