-- lua/plugins/hop.lua

return {
  "smoka7/hop.nvim",
  opts = function()
    require("hop").setup {
      keys = "etovxqpdygfblzhckisuran", -- Colemak layout keys
    }
  end,
  dependencies = {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["s"] = { function() require("hop").hint_char2() end, desc = "Hop to character 2" },
          ["<S-s>"] = { function() require("hop").hint_lines() end, desc = "Hop to lines" },
        },
        v = {
          ["s"] = { function() require("hop").hint_char2 { extend_visual = true } end, desc = "Hop to character 2" },
          ["<S-s>"] = { function() require("hop").hint_lines { extend_visual = true } end, desc = "Hop to lines" },
        },
      },
    },
  },
}
