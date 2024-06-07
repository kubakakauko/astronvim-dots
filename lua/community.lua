-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.tokyodark-nvim" },
  { import = "astrocommunity.scrolling.satellite-nvim" },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.lsp.actions-preview-nvim" },
  { import = "astrocommunity.project.project-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },

  -- { import = "astrocommunity.split-and-window.edgy-nvim" },
  { import = "astrocommunity.split-and-window.windows-nvim" },
  -- { import = "astrocommunity.workflow.precognition-nvim" },
  { import = "astrocommunity.workflow.hardtime-nvim" },
  {
    "jay-babu/project.nvim",
    opts = function(_, opts) opts.patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile" } end,
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
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
        lualine_a = opts.winbar.lualine_a,
        lualine_b = opts.winbar.lualine_b,
        lualine_c = opts.winbar.lualine_c,
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      }

      opts.sections = {}
      opts.inactive_sections = {}

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
    "edgy.nvim",
    opts = {
      keys = {
        -- Update your custom keybindings here
        ["<Leader>M"] = { function() require("edgy").toggle() end, desc = "Toggle Sidebars" },
        ["<Leader>m"] = { function() require("edgy").select() end, desc = "Pick Sidebar" },
      },
    },
  },
}
