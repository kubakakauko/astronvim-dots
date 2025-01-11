-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- import/override with your plugins folder
  { import = "astrocommunity.scrolling.satellite-nvim" },

  -- icons
  { import = "astrocommunity.icon.mini-icons" }, -- checkhealth told me install this

  -- completion
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.completion.cmp-under-comparator" },
  { import = "astrocommunity.completion.magazine-nvim" }, --Magazine.nvim is a "beta" nvim-cmp to fix bugs & implement new features early
  -- { import = "astrocommunity/completion/blink-cmp" },

  -- git
  { import = "astrocommunity.git.fugit2-nvim" },

  -- quickfix
  -- { import = "astrocommunity.quickfix.nvim-bqf" },
  { import = "astrocommunity.quickfix.quicker-nvim" },

  -- split and windows
  -- { import = "astrocommunity.split-and-window.windows-nvim" },
  -- { import = "astrocommunity.split-and-window.edgy-nvim" },

  -- keybindings
  { import = "astrocommunity.keybinding.hydra-nvim" },
  { import = "astrocommunity.keybinding.nvcheatsheet-nvim" },

  -- strartup
  { import = "astrocommunity.startup.fsplash-nvim" },

  -- terminal integration
  { import = "astrocommunity.terminal-integration.flatten-nvim" }, -- open files from terminal in current nvim instance
  { import = "astrocommunity.terminal-integration.toggleterm-manager-nvim" }, -- telescope visualization of terminals

  -- compiler
  { import = "astrocommunity.code-runner.compiler-nvim" },
  { import = "astrocommunity.code-runner.molten-nvim" },

  -- utility
  -- { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.utility.hover-nvim" },
  { import = "astrocommunity.utility.telescope-fzy-native-nvim" },
  { import = "astrocommunity.utility.telescope-lazy-nvim" },
  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
  { import = "astrocommunity.utility.nvim-toggler" },

  --this may be fucky
  { import = "astrocommunity/utility/mason-tool-installer-nvim" },

  -- workflow
  -- { import = "astrocommunity.workflow.hardtime-nvim" },
  -- { import = "astrocommunity.workflow.precognition-nvim" },

  -- dap
  { import = "astrocommunity.debugging.nvim-dap-repl-highlights" },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.debugging.telescope-dap-nvim" },

  -- file explorer
  -- { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.file-explorer.telescope-file-browser-nvim" },

  -- markdown and latex
  { import = "astrocommunity/markdown-and-latex/render-markdown-nvim" },

  -- game
  { import = "astrocommunity.game.leetcode-nvim" },

  -- colorscheme
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.colorscheme", lazy = false },

  -- motion
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.motion.hop-nvim" },
  -- { import = "astrocommunity.motion.mini-move" }, --moving lines but its not colemak suitable
  { import = "astrocommunity.motion.nvim-surround" },

  -- project
  { import = "astrocommunity.search.nvim-spectre" },

  -- editing support 
  -- { import = "astrocommunity.editing-support.dial-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.copilotchat-nvim" },
  -- { import = "astrocommunity.editing-support.multiple-cursors-nvim" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  { import = "astrocommunity.editing-support.bigfile-nvim" },
  { import = "astrocommunity.editing-support.auto-save-nvim" },
  { import = "astrocommunity.editing-support.neogen" }, -- snippets for docs
  { import = "astrocommunity.editing-support.treesj" }, -- joining and splitting lines of code

  -- syntax
  -- https://github.com/machakann/vim-sandwich keybinginds are defined here https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/syntax/vim-sandwich/init.lua
  { import = "astrocommunity.syntax.vim-sandwich" }, -- joining and splitting lines of code

  -- indent
  -- { import = "astrocommunity.indent.indent-tools-nvim" }, -- this is OP but i think we dont have the bindings done correctly in the default install
  -- { import = "astrocommunity.indent.mini-indentscope" },

  -- diagnostics
  { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" },
  { import = "astrocommunity.diagnostics.lsp_lines-nvim" },

  -- pack
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.tailwindcss" },
  -- { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.python-ruff" },

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

  -- nv chad ui
  -- { import = "astrocommunity.pack.nvchad-ui" },

  --fuzzy-finder
  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },
  -- { import = "astrocommunity.fuzzy-finder.fzf-lua" },

  -- media
  { import = "astrocommunity.media.image-nvim" },

  -- lsp
  { import = "astrocommunity.lsp.delimited-nvim" }, -- helps to move to next / pred ]D etc
  -- { import = "astrocommunity.lsp.lsp-signature-nvim" },
  -- { import = "astrocommunity.lsp.actions-preview-nvim" },
  -- { import = "astrocommunity.lsp.lsp-lens-nvim"  }, -- display number of references etc
  { import = "astrocommunity.lsp.garbage-day-nvim" },
  { import = "astrocommunity.lsp.nvim-lint" },
  { import = "astrocommunity.lsp.lspsaga-nvim" },
  { import = "astrocommunity.lsp.lsplinks-nvim" },

  -- recipes
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.recipes.telescope-lsp-mappings" },
  -- { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  -- { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  { import = "astrocommunity.recipes.cache-colorscheme" },
  -- { import = "astrocommunity.recipes.neo-tree-dark" },

  -- { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  -- { import = "astrocommunity.recipes.heirline-clock-statusline" },

  -- bars and lines
  { import = "astrocommunity/bars-and-lines/dropbar-nvim" },
  -- { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },
  -- { import = "astrocommunity.bars-and-lines.statuscol-nvim" },
  -- { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  -- adds the scrollbar to the right hand side
  { import = "astrocommunity.bars-and-lines.scope-nvim" },

  -- { import = "astrocommunity.workflow.hardtime-nvim" },
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
