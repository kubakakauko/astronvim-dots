-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- import/override with your plugins folder
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.scrolling.satellite-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  { import = "astrocommunity.split-and-window.windows-nvim" },

  -- workflow
  -- { import = "astrocommunity.workflow.hardtime-nvim" },

  { import = "astrocommunity.workflow.precognition-nvim" },

  -- file explorer
  { import = "astrocommunity.file-explorer.oil-nvim" },

  -- colorscheme
  { import = "astrocommunity.colorscheme.tokyodark-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },

  -- motion
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.nvim-surround" },

  -- project
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.project.project-nvim" },

  -- editing
  { import = "astrocommunity.editing-support.dial-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },

  -- pack
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.tailwindcss" },

  -- lsp
  { import = "astrocommunity.lsp.delimited-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.lsp.actions-preview-nvim" },

  -- recipes
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.recipes.telescope-lsp-mappings" },

  -- bars and lines
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },
  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  {
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
  },
  {
    "dial.nvim",
    opts = {
      mappings = {
        v = {
          ["<C-a>"] = {
            function() return require("dial.map").manipulate("increment", "visual") end,
            desc = "Increment",
          },
          ["<C-A>"] = {
            function() return require("dial.map").manipulate("decrement", "visual") end,
            desc = "Decrement",
          },
        },
        x = {
          ["g<C-a>"] = {
            function() return require("dial.map").manipulate("increment", "gvisual") end,
            desc = "Increment",
          },
          ["g<C-A>"] = {
            function() return require("dial.map").manipulate("decrement", "gvisual") end,
            desc = "Decrement",
          },
        },
        n = {
          ["<C-a>"] = {
            function() return require("dial.map").manipulate("increment", "normal") end,
            desc = "Increment",
          },
          ["<C-A>"] = {
            function() return require("dial.map").manipulate("decrement", "normal") end,
            desc = "Decrement",
          },
          ["g<C-a>"] = {
            function() return require("dial.map").manipulate("increment", "gnormal") end,
            desc = "Increment",
          },
          ["g<C-A>"] = {
            function() return require("dial.map").manipulate("decrement", "gnormal") end,
            desc = "Decrement",
          },
        },
      },
    },
  },
  -- { import = "astrocommunity.workflow.hardtime-nvim" },
  {
    "precognition.nvim",
    opts = {
      hints = {
        Caret = { text = "^", prio = 2 },
        Dollar = { text = "$", prio = 1 },
        MatchingPair = { text = "%", prio = 5 },
        Zero = { text = "0", prio = 1 },
        w = { text = "w", prio = 10 },
        b = { text = "b", prio = 9 },
        e = { text = "f", prio = 8 },
        W = { text = "W", prio = 7 },
        B = { text = "B", prio = 6 },
        E = { text = "F", prio = 5 },
      },
    },
  },

  {
    "jay-babu/project.nvim",
    opts = function(_, opts) opts.patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile" } end,
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Add the `neo-tree` filetype to the `disabled_filetypes` option
      opts.options = vim.tbl_extend("force", opts.options or {}, {
        disabled_filetypes = {
          statusline = {},
          winbar = { "neo-tree", "nvim-tree" },
        },
      })

      opts.winbar = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = {
          {
            "filename",
            path = 1,

            file_status = true, -- Displays file status (readonly status, modified status)
            newfile_status = false, -- Display new file status (new file means no write after created)

            shorting_target = 40, -- Shortens path to leave 40 spaces in the window
            -- for other components. (terrible name, any suggestions?)
            symbols = {
              modified = "", -- Text to show when the file is modified.
              readonly = "", -- Text to show when the file is non-modifiable or readonly.
              unnamed = "", -- Text to show for unnamed buffers.
              newfile = "", -- Text to show for newly created file before first write
              directory = "",
              oil = "",
            },

            filetype_names = {
              TelescopePrompt = "Telescope ",
              dashboard = "Dashboard",
              packer = "Packer",
              fzf = "FZF",
              alpha = "Dashboard",
              oil = "",
            },
          },
        },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = {
          { "progress" },
          {
            "searchcount",
            maxcount = 999,
            timeout = 500,
          },
        },
        lualine_z = { "location" },
      }

      opts.inactive_winbar = {
        lualine_c = opts.winbar.lualine_c,
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      }

      opts.sections = {}
      opts.inactive_sections = {}
      opts.extentensions = { "fugitive", "nvim-tree", "quickfix", "toggleterm", "packer", "oil" }

      return opts
    end,
  },
  {
    "noice.nvim",
    opts = function(_, opts)
      opts.presets.bottom_search = false
      opts.lsp.signature = { enabled = false }
      return opts
    end,
  },

  {
    "echasnovski/mini.move",
    opts = {
      mappings = {
        left = "<M-S-h>",
        right = "<M-S-i>",
        down = "<M-S-n>",
        up = "<M-S-e>",
        line_left = "<M-S-h>",
        line_right = "<M-S-i>",
        line_up = "<M-S-e>",
        line_down = "<M-S-n>",
      },
    },
  },
}
