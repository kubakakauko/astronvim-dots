-- lua/plugins/telescope-egrepify.lua

return {
  "fdschmidt93/telescope-egrepify.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup {
      extensions = {
        egrepify = {
          AND = true,
          permutations = false,
          lnum = true,
          lnum_hl = "EgrepifyLnum",
          col = false,
          col_hl = "EgrepifyCol",
          title = true,
          filename_hl = "EgrepifyFile",
          results_ts_hl = true,
          prefixes = {
            ["!"] = { flag = "invert-match" },
            ["^"] = false,
          },
          mappings = {
            i = {
              ["<C-z>"] = function() require("telescope").extensions.egrepify.actions.toggle_prefixes() end,
              ["<C-a>"] = function() require("telescope").extensions.egrepify.actions.toggle_and() end,
              ["<C-r>"] = function() require("telescope").extensions.egrepify.actions.toggle_permutations() end,
            },
          },
        },
      },
    }
    require("telescope").load_extension "egrepify"
  end,
}
