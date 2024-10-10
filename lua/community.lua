-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- import/override with your plugins folder
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.scrolling.satellite-nvim" },
  { import = "astrocommunity.icon.mini-icons" },

  -- split and windows
  { import = "astrocommunity.split-and-window.windows-nvim" },
  { import = "astrocommunity.split-and-window.edgy-nvim" },

  -- keybindings
  { import = "astrocommunity.keybinding.hydra-nvim" },

  -- compiler
  { import = "astrocommunity.code-runner.compiler-nvim" },
  { import = "astrocommunity.code-runner.molten-nvim" },

  -- utility
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.utility.hover-nvim" },
  { import = "astrocommunity.utility.telescope-fzy-native-nvim" },
  { import = "astrocommunity.utility.telescope-lazy-nvim" },

  -- workflow
  -- { import = "astrocommunity.workflow.hardtime-nvim" },
  -- { import = "astrocommunity.workflow.precognition-nvim" },

  -- dap
  { import = "astrocommunity.debugging.nvim-dap-repl-highlights" },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.debugging.telescope-dap-nvim" },

  -- file explorer
  { import = "astrocommunity.file-explorer.oil-nvim" },

  { import = "astrocommunity.file-explorer.telescope-file-browser-nvim" },
  -- game
  { import = "astrocommunity.game.leetcode-nvim" },

  -- colorscheme
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.colorscheme" },
  -- { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  -- { import = "astrocommunity.colorscheme.tokyodark-nvim" },
  -- { import = "astrocommunity.colorscheme.aurora" },
  -- { import = "astrocommunity.colorscheme.nord-nvim" },
  -- { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  -- { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  -- { import = "astrocommunity.colorscheme.bamboo-nvim" },
  -- { import = "astrocommunity.colorscheme.bluloco-nvim" },
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.colorscheme.citruszest-nvim" },
  -- { import = "astrocommunity.colorscheme.cyberdream-nvim" },
  -- { import = "astrocommunity.colorscheme.dracula-nvim" },
  -- { import = "astrocommunity.colorscheme.eldritch-nvim" },
  -- { import = "astrocommunity.colorscheme.everforest" },
  -- { import = "astrocommunity.colorscheme.fluoromachine-nvim" },
  -- { import = "astrocommunity.colorscheme.github-nvim-theme" },
  -- { import = "astrocommunity.colorscheme.gruvbox-baby" },
  -- { import = "astrocommunity.colorscheme.helix-nvim" },
  -- { import = "astrocommunity.colorscheme.hybrid-nvim" },
  -- { import = "astrocommunity.colorscheme.iceberg-vim" },
  -- { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  -- { import = "astrocommunity.colorscheme.kanagawa-paper-nvim" },
  -- { import = "astrocommunity.colorscheme.lackluster-nvim" },
  -- { import = "astrocommunity.colorscheme.melange-nvim" },
  -- { import = "astrocommunity.colorscheme.mellifluous-nvim" },
  -- { import = "astrocommunity.colorscheme.mellow-nvim" },
  -- { import = "astrocommunity.colorscheme.miasma-nvim" },
  -- { import = "astrocommunity.colorscheme.mini-base16" },
  -- { import = "astrocommunity.colorscheme.modus-nvim" },
  -- { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  -- { import = "astrocommunity.colorscheme.neofusion-nvim" },
  -- { import = "astrocommunity.colorscheme.neosolarized-nvim" },
  -- { import = "astrocommunity.colorscheme.night-owl-nvim" },
  -- { import = "astrocommunity.colorscheme.nightfox-nvim" },
  -- { import = "astrocommunity.colorscheme.nordic-nvim" },
  -- { import = "astrocommunity.colorscheme.nvim-juliana" },
  -- { import = "astrocommunity.colorscheme.oldworld-nvim" },
  -- { import = "astrocommunity.colorscheme.oxocarbon-nvim" },
  -- { import = "astrocommunity.colorscheme.poimandres-nvim" },
  -- { import = "astrocommunity.colorscheme.rose-pine" },
  -- { import = "astrocommunity.colorscheme.solarized-osaka-nvim" },
  -- { import = "astrocommunity.colorscheme.sonokai" },
  -- { import = "astrocommunity.colorscheme.vim-dogrun" },

  -- motion
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.nvim-surround" },

  -- project
  { import = "astrocommunity.search.nvim-spectre" },

  -- editing
  { import = "astrocommunity.editing-support.dial-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.copilotchat-nvim" },
  { import = "astrocommunity.editing-support.comment-box-nvim" },
  { import = "astrocommunity.editing-support.multiple-cursors-nvim" },
  { import = "astrocommunity.editing-support.yanky-nvim" },

  -- indent
  { import = "astrocommunity.indent.indent-tools-nvim" },
  { import = "astrocommunity.indent.mini-indentscope" },

  -- pack
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.tailwindcss" },
  {
    import = "astrocommunity.pack.python",
    opts = function(_, opts)
      -- Extend Pyright setup to detect Conda environment automatically
      opts.lsp = opts.lsp or {}
      opts.lsp.before_init = function(_, config)
        local conda_prefix = os.getenv "CONDA_PREFIX"
        if conda_prefix and conda_prefix ~= "" then
          config.settings.python.pythonPath = conda_prefix .. "/bin/python"
        else
          config.settings.python.pythonPath = vim.fn.exepath "python3" or vim.fn.exepath "python" or "python"
        end
      end
      return opts
    end,
  },

  -- { import = "astrocommunity.pack.nvchad-ui" },

  --fuzzy-finder
  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },

  -- media
  { import = "astrocommunity.media.image-nvim" },

  -- lsp
  { import = "astrocommunity.lsp.delimited-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.lsp.actions-preview-nvim" },
  { import = "astrocommunity.lsp.lsp-lens-nvim" },
  { import = "astrocommunity.lsp.garbage-day-nvim" },
  { import = "astrocommunity.lsp.nvim-lint" },
  { import = "astrocommunity.lsp.lspsaga-nvim" },
  { import = "astrocommunity.lsp.lsplinks-nvim" },

  -- recipes
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.recipes.telescope-lsp-mappings" },
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  { import = "astrocommunity.recipes.cache-colorscheme" },
  { import = "astrocommunity.recipes.neo-tree-dark" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  -- { import = "astrocommunity.recipes.heirline-clock-statusline" },

  -- bars and lines
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },
  -- { import = "astrocommunity.bars-and-lines.statuscol-nvim" },
  -- { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  -- adds the scrollbar to the right hand side
  { import = "astrocommunity.bars-and-lines.scope-nvim" },

  -- { import = "astrocommunity.workflow.hardtime-nvim" },
  -- {
  --   "precognition.nvim",
  --   opts = {
  --     hints = {
  --       Caret = { text = "^", prio = 2 },
  --       Dollar = { text = "$", prio = 1 },
  --       MatchingPair = { text = "%", prio = 5 },
  --       Zero = { text = "0", prio = 1 },
  --       w = { text = "w", prio = 10 },
  --       b = { text = "b", prio = 9 },
  --       e = { text = "f", prio = 8 },
  --       W = { text = "W", prio = 7 },
  --       B = { text = "B", prio = 6 },
  --       E = { text = "F", prio = 5 },
  --     },
  --   },
  -- },

  -- {
  --   "nvim-lualine/lualine.nvim",
  --   opts = function(_, opts)
  --     -- Add the `neo-tree` filetype to the `disabled_filetypes` option
  --     opts.options = vim.tbl_extend("force", opts.options or {}, {
  --       disabled_filetypes = {
  --         statusline = {},
  --         winbar = { "neo-tree" },
  --       },
  --     })
  --
  --     opts.winbar = {
  --       lualine_a = { "mode" },
  --       lualine_b = { "branch", "diff", "diagnostics" },
  --       lualine_c = {
  --         {
  --           "filename",
  --           path = 1,
  --
  --           file_status = true, -- Displays file status (readonly status, modified status)
  --           newfile_status = false, -- Display new file status (new file means no write after created)
  --
  --           shorting_target = 40, -- Shortens path to leave 40 spaces in the window
  --           -- for other components. (terrible name, any suggestions?)
  --           symbols = {
  --             modified = "", -- Text to show when the file is modified.
  --             readonly = "", -- Text to show when the file is non-modifiable or readonly.
  --             unnamed = "", -- Text to show for unnamed buffers.
  --             newfile = "", -- Text to show for newly created file before first write
  --             directory = "",
  --             oil = "",
  --           },
  --
  --           filetype_names = {
  --             TelescopePrompt = "Telescope ",
  --             dashboard = "Dashboard",
  --             packer = "Packer",
  --             fzf = "FZF",
  --             alpha = "Dashboard",
  --             oil = "",
  --           },
  --         },
  --       },
  --       lualine_x = { "encoding", "fileformat", "filetype" },
  --       lualine_y = {
  --         { "progress" },
  --         {
  --           "searchcount",
  --           maxcount = 999,
  --           timeout = 500,
  --         },
  --       },
  --       lualine_z = { "location" },
  --     }
  --
  --     opts.inactive_winbar = {
  --       lualine_c = opts.winbar.lualine_c,
  --       lualine_x = {},
  --       lualine_y = {},
  --       lualine_z = {},
  --     }
  --
  --     opts.sections = {}
  --     opts.inactive_sections = {}
  --     opts.extentensions = { "fugitive", "nvim-tree", "quickfix", "toggleterm", "packer", "oil" }
  --
  --     return opts
  --   end,
  -- },
}
