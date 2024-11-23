-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

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
  { "max397574/better-escape.nvim", enabled = true },

  -- -- -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },

  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --
  --         -- specify a list of rules to add
  --         Rule(" ", " "):with_pair(function(options)
  --           local pair = options.line:sub(options.col - 1, options.col)
  --           return vim.tbl_contains({ "()", "[]", "{}" }, pair)
  --         end),
  --         Rule("( ", " )")
  --           :with_pair(function() return false end)
  --           :with_move(function(options) return options.prev_char:match ".%)" ~= nil end)
  --           :use_key ")",
  --         Rule("{ ", " }")
  --           :with_pair(function() return false end)
  --           :with_move(function(options) return options.prev_char:match ".%}" ~= nil end)
  --           :use_key "}",
  --         Rule("[ ", " ]")
  --           :with_pair(function() return false end)
  --           :with_move(function(options) return options.prev_char:match ".%]" ~= nil end)
  --           :use_key "]",
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
  --
  --

  --
  -- {
  --   "bluz71/vim-moonfly-colors",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.syntax "enable"
  --     -- vim.cmd.colorscheme "moonfly"
  --
  --     vim.api.nvim_set_hl(0, "MoltenOutputBorder", { link = "Normal" })
  --     vim.api.nvim_set_hl(0, "MoltenOutputBorderFail", { link = "MoonflyCrimson" })
  --     vim.api.nvim_set_hl(0, "MoltenOutputBorderSuccess", { link = "MoonflyBlue" })
  --   end,
  -- },
  -- {
  --   "benlubas/molten-nvim",
  --   dependencies = { "3rd/image.nvim" },
  --   build = ":UpdateRemotePlugins",
  --   init = function()
  --     vim.g.molten_image_provider = "image.nvim"
  --     vim.g.molten_use_border_highlights = true
  --     -- add a few new things
  --
  --     -- don't change the mappings (unless it's related to your bug)
  --     vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>")
  --     vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>")
  --     vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>")
  --     vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv")
  --     vim.keymap.set("n", "<localleader>os", ":noautocmd MoltenEnterOutput<CR>")
  --     vim.keymap.set("n", "<localleader>oh", ":MoltenHideOutput<CR>")
  --     vim.keymap.set("n", "<localleader>md", ":MoltenDelete<CR>")
  --   end,
  -- },
}
