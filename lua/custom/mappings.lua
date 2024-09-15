-- init.lua or lua/custom/mappings.lua

-- Set up Colemak mappings for window navigation
--
-- Colemak mappings for window navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Move to left window" })
vim.api.nvim_set_keymap("n", "<C-n>", "<C-w>j", { noremap = true, silent = true, desc = "Move to bottom window" })
vim.api.nvim_set_keymap("n", "<C-e>", "<C-w>k", { noremap = true, silent = true, desc = "Move to top window" })
vim.api.nvim_set_keymap("n", "<C-i>", "<C-w>l", { noremap = true, silent = true, desc = "Move to right window" })
-- -- Unmap conflicting keys in normal mode
-- vim.api.nvim_del_keymap("n", "gc")
-- vim.api.nvim_del_keymap("n", "gb")

-- Remap e and E motions to f and F for Colemak layout
vim.api.nvim_set_keymap("n", "f", "e", { noremap = true, silent = true, desc = "Move to end of word" })
vim.api.nvim_set_keymap("n", "F", "E", { noremap = true, silent = true, desc = "Move to end of WORD" })
vim.api.nvim_set_keymap("v", "f", "e", { noremap = true, silent = true, desc = "Move to end of word" })
vim.api.nvim_set_keymap("v", "F", "E", { noremap = true, silent = true, desc = "Move to end of WORD" })
-- alternative keybinging for Hover Symbol Details
vim.api.nvim_set_keymap(
  "n",
  "<Leader>k",
  "<cmd>lua vim.lsp.buf.hover()<CR>",
  { noremap = true, silent = true, desc = "Hover Symbol Details" }
)
-- Reassign gc and gb for comment toggling if using a comment plugin like comment.nvim
-- vim.api.nvim_set_keymap("n", "gc", "<Plug>(comment_toggle_linewise)", { noremap = false, silent = true })
-- vim.api.nvim_set_keymap("n", "gb", "<Plug>(comment_toggle_blockwise)", { noremap = false, silent = true })

-- Custom command to open WhichKey with a specific leader key
vim.api.nvim_set_keymap("n", "<Leader>?", ":WhichKey<CR>", { noremap = true, silent = true })

--TODO: Add documentation to this (maybe in the WhichKey menu)

-- Remap jump forward and backward to avoid conflict with Colemak
vim.api.nvim_set_keymap("n", "<C-o>", "<C-o>", { noremap = true, silent = true, desc = "Jump back" })
vim.api.nvim_set_keymap("n", "<C-;>", "<C-i>", { noremap = true, silent = true, desc = "Jump forward" })

-- Automatically launch the correct kernel
vim.keymap.set("n", "<leader>ip", function()
  local venv = os.getenv "VIRTUAL_ENV"
  if venv ~= nil then
    -- in the form of /home/benlubas/.virtualenvs/VENV_NAME
    venv = string.match(venv, "/.+/(.+)")
    vim.cmd(("MoltenInit %s"):format(venv))
  else
    vim.cmd "MoltenInit python3"
  end
end, { desc = "Initialize Molten for python3", silent = false })
