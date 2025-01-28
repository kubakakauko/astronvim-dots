-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

-- -@type LazySpec
return {
  -- Tokyo Night Color Scheme
  {
    "folke/tokyonight.nvim",
    lazy = false, -- Ensure it's loaded immediately
    config = function()
      require("tokyonight").setup {
        style = "night", -- Options: "storm", "night", "day"
      }
    end,
  },

  -- Ayu Color Scheme
  {
    "Shatur/neovim-ayu",
    lazy = false, -- Ensure it's loaded immediately
    config = function() require("ayu").setup {} end,
  },

  -- == Examples of Adding Plugins ==

  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function() require("lsp_signature").setup() end,
  -- },

  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  -- {
  --   "goolord/alpha-nvim",
  --   opts = function(_, opts)
  --     -- customize the dashboard header
  --     opts.section.header.val = {
  --       " █████  ███████ ████████ ██████   ██████",
  --       "██   ██ ██         ██    ██   ██ ██    ██",
  --       "███████ ███████    ██    ██████  ██    ██",
  --       "██   ██      ██    ██    ██   ██ ██    ██",
  --       "██   ██ ███████    ██    ██   ██  ██████",
  --       " ",
  --       "    ███    ██ ██    ██ ██ ███    ███",
  --       "    ████   ██ ██    ██ ██ ████  ████",
  --       "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
  --       "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
  --       "    ██   ████   ████   ██ ██      ██",
  --     }
  --     return opts
  --   end,
  -- },
  --
  --

  -- Add the vim-colemak plugin
  "arecatsreal/vim-colemak",

  "nvimtools/none-ls-extras.nvim",
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = { layout_config = { horizontal = { preview_cutoff = 0 } } },
      pickers = { colorscheme = { enable_preview = true } },
    },
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "fdschmidt93/telescope-egrepify.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = true },
}
