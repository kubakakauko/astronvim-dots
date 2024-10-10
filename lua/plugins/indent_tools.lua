-- TODO: We remapped the keys to be more compatible with colemak however, moving with i is a bad practice anyways.
return {
  "arsham/indent-tools.nvim",
  dependencies = {
    "arsham/arshlib.nvim",
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function()
    require("indent-tools").config {
      normal = {
        up = "[i", -- Remap from "[i" to "[j"
        down = "]i", -- Remap from "]i" to "]j"
        repeatable = true, -- Enable repeatable jumps
      },
      visual = {
        up = "[I", -- Remap visual mode "[i" to "[J"
        down = "]I", -- Remap visual mode "]i" to "]J"
        select_scope = "gj", -- Remap visual "ii" to "gj" to avoid conflicts
      },
      textobj = {
        inner = "ij", -- Remap "ii" to "ij"
        around = "aj", -- Remap "ai" to "aj"
      },
    }

    -- Explicitly unmap "ii" in visual mode to prevent conflicts
    vim.api.nvim_del_keymap("v", "ii")
  end,
}
