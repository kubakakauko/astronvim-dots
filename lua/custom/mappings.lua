-- init.lua or lua/custom/mappings.lua

-- Set up Colemak mappings for window navigation
--
local map = vim.api.nvim_set_keymap
--
-- Colemak mappings for window navigation
map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Move to left window" })
map("n", "<C-n>", "<C-w>j", { noremap = true, silent = true, desc = "Move to bottom window" })
map("n", "<C-e>", "<C-w>k", { noremap = true, silent = true, desc = "Move to top window" })
map("n", "<C-i>", "<C-w>l", { noremap = true, silent = true, desc = "Move to right window" })
-- -- Unmap conflicting keys in normal mode
-- vim.api.nvim_del_keymap("n", "gc")
-- vim.api.nvim_del_keymap("n", "gb")

-- Remap e and E motions to f and F for Colemak layout
map("n", "f", "e", { noremap = true, silent = true, desc = "Move to end of word" })
map("n", "F", "E", { noremap = true, silent = true, desc = "Move to end of WORD" })
map("v", "f", "e", { noremap = true, silent = true, desc = "Move to end of word" })
map("v", "F", "E", { noremap = true, silent = true, desc = "Move to end of WORD" })
-- alternative keybinging for Hover Symbol Details
map(
  "n",
  "<Leader>k",
  "<cmd>lua vim.lsp.buf.hover()<CR>",
  { noremap = true, silent = true, desc = "Hover Symbol Details" }
)
-- Reassign gc and gb for comment toggling if using a comment plugin like comment.nvim
-- map("n", "gc", "<Plug>(comment_toggle_linewise)", { noremap = false, silent = true })
-- map("n", "gb", "<Plug>(comment_toggle_blockwise)", { noremap = false, silent = true })

-- Custom command to open WhichKey with a specific leader key
map("n", "<Leader>?", ":WhichKey<CR>", { noremap = true, silent = true })

--TODO: Add documentation to this (maybe in the WhichKey menu)

-- Remap jump forward and backward to avoid conflict with Colemak
map("n", "<C-o>", "<C-o>", { noremap = true, silent = true, desc = "Jump back" })
map("n", "<C-;>", "<C-i>", { noremap = true, silent = true, desc = "Jump forward" })

-- Export diagnostics to quickfix list for easy copy
vim.api.nvim_create_user_command("ExportDiagnosticsToQuickfix", function()
  vim.diagnostic.setqflist()
  vim.cmd "copen" -- Open the quickfix window
end, {})

-- Binding for Telescope egrefipy
map("n", "<leader>F", ":Telescope egrepify<CR>", { noremap = true, silent = true })

-- -- Automatically launch the correct kernel
-- vim.keymap.set("n", "<leader>ip", function()
--   local venv = os.getenv "VIRTUAL_ENV"
--   if venv ~= nil then
--     -- in the form of /home/benlubas/.virtualenvs/VENV_NAME
--     venv = string.match(venv, "/.+/(.+)")
--     vim.cmd(("MoltenInit %s"):format(venv))
--   else
--     vim.cmd "MoltenInit python3"
--   end
-- end, { desc = "Initialize Molten for python3", silent = false })
