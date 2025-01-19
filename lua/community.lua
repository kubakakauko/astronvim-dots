-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- import/override with your plugins folder

  ----------------------------------
  --- Scrolling
  { import = "astrocommunity.scrolling.satellite-nvim" }, -- sidebar
  { import = "astrocommunity.scrolling.mini-animate" }, --  animate common Neovim actions

  ----------------------------------
  --- Icons
  { import = "astrocommunity.icon.mini-icons" }, -- icon provider

  ----------------------------------
  --- Completion
  { import = "astrocommunity.completion.copilot-lua-cmp" }, -- copilot in cmp
  { import = "astrocommunity.completion.cmp-under-comparator" }, -- sort items starting with underlines
  { import = "astrocommunity.completion.magazine-nvim" }, --"beta" nvim-cmp to fix bugs n new features early
  -- { import = "astrocommunity/completion/blink-cmp" }, -- completion plugin

  ----------------------------------
  --- Git
  { import = "astrocommunity.git.fugit2-nvim" }, -- git helper

  ----------------------------------
  --- Quickfix
  { import = "astrocommunity.quickfix.quicker-nvim" }, -- workflow and UI enhancements for qf

  ----------------------------------
  --- Keybinding
  { import = "astrocommunity.keybinding.hydra-nvim" }, -- submodels and menus
  { import = "astrocommunity.keybinding.nvcheatsheet-nvim" }, -- cheatsheet <F1>
  ----------------------------------
  -- Strartup
  { import = "astrocommunity.startup.fsplash-nvim" }, -- splash screen

  ----------------------------------
  -- Terminal integration
  { import = "astrocommunity.terminal-integration.flatten-nvim" }, -- open files from terminal in current nvim instance
  { import = "astrocommunity.terminal-integration.toggleterm-manager-nvim" }, -- telescope visualization of terminals

  ----------------------------------
  -- Compiler
  { import = "astrocommunity.code-runner.compiler-nvim" },
  { import = "astrocommunity.code-runner.molten-nvim" },

  ----------------------------------
  -- Utility
  { import = "astrocommunity.utility.hover-nvim" },
  { import = "astrocommunity.utility.telescope-fzy-native-nvim" },
  { import = "astrocommunity.utility.telescope-lazy-nvim" },
  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
  { import = "astrocommunity.utility.nvim-toggler" }, -- <Leader>i
  { import = "astrocommunity/utility/mason-tool-installer-nvim" },
  -- { import = "astrocommunity.utility.noice-nvim" },

  ----------------------------------
  -- Workflow
  -- { import = "astrocommunity.workflow.hardtime-nvim" },
  -- { import = "astrocommunity.workflow.precognition-nvim" },

  ----------------------------------
  -- Dap
  { import = "astrocommunity.debugging.nvim-dap-repl-highlights" },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.debugging.telescope-dap-nvim" },

  ----------------------------------
  -- File explorer
  { import = "astrocommunity.file-explorer.telescope-file-browser-nvim" },

  ----------------------------------
  -- Markdown and latex
  { import = "astrocommunity/markdown-and-latex/render-markdown-nvim" },

  ----------------------------------
  -- Game
  { import = "astrocommunity.game.leetcode-nvim" },

  ----------------------------------
  -- Colorscheme
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.colorscheme", lazy = false },

  ----------------------------------
  -- Motion
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.motion.mini-ai" }, -- learn this va etc
  -- { import = "astrocommunity.motion.mini-move" }, --moving lines but its not colemak suitable
  -- { import = "astrocommunity.motion.nvim-surround" }, -- alternative to vim-sandwich

  ----------------------------------
  -- Project
  { import = "astrocommunity.search.nvim-spectre" }, -- replace

  ----------------------------------
  -- Editing support
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.copilotchat-nvim" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  { import = "astrocommunity.editing-support.bigfile-nvim" },
  { import = "astrocommunity.editing-support.auto-save-nvim" },
  { import = "astrocommunity.editing-support.neogen" }, -- snippets for docs
  { import = "astrocommunity.editing-support.treesj" }, -- joining and splitting lines of code <leader>m
  { import = "astrocommunity.editing-support.cutlass-nvim" }, -- delete doesnt affect yank
  -- { import = "astrocommunity.editing-support.multiple-cursors-nvim" },
  -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  -- { import = "astrocommunity.editing-support.dial-nvim" },

  ----------------------------------
  -- Syntax
  { import = "astrocommunity.syntax.vim-sandwich" }, -- surroundings sa, sd ,sr

  ----------------------------------
  -- Indent
  { import = "astrocommunity.indent.mini-indentscope" }, -- indent lines
  { import = "astrocommunity.indent.indent-blankline-nvim" }, -- indicates blanks lines
  { import = "astrocommunity.indent.indent-tools-nvim" }, -- this is OP but i think we dont have the bindings done correctly in the default install

  ----------------------------------
  -- Diagnostics
  { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" },
  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },

  ----------------------------------
  -- Pack
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python-ruff" },

  ----------------------------------
  --Fuzzy-finder
  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" }, --zoxide in telescope <leader>fz
  -- { import = "astrocommunity.fuzzy-finder.fzf-lua" },

  ----------------------------------
  -- Media
  { import = "astrocommunity.media.image-nvim" },

  ----------------------------------
  -- Lsp
  { import = "astrocommunity.lsp.delimited-nvim" }, -- helps to move to next / pred ]D etc
  { import = "astrocommunity.lsp.garbage-day-nvim" }, -- garbage collector for inactive LSPs
  { import = "astrocommunity.lsp.nvim-lint" }, -- linter complementary to the built in LSP
  { import = "astrocommunity.lsp.lspsaga-nvim" }, -- better looking LSP UI
  { import = "astrocommunity.lsp.lsplinks-nvim" }, -- gx links to the documents
  { import = "astrocommunity.lsp.ts-error-translator-nvim" }, -- ts errors translator
  { import = "astrocommunity.lsp.lsp-signature-nvim" }, -- shows function signature when you type
  -- { import = "astrocommunity.lsp.actions-preview-nvim" },
  -- { import = "astrocommunity.lsp.lsp-lens-nvim"  }, -- display number of references etc

  ----------------------------------
  -- Recipes
  { import = "astrocommunity.recipes.neovide" }, -- neovide support
  { import = "astrocommunity.recipes.telescope-lsp-mappings" }, -- <Leader>lG, <leader>lR
  { import = "astrocommunity.recipes.cache-colorscheme" },
  -- { import = "astrocommunity.recipes.neo-tree-dark" },
  -- { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  -- { import = "astrocommunity.recipes.heirline-clock-statusline" },
  -- { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  -- { import = "astrocommunity.recipes.telescope-nvchad-theme" },

  ----------------------------------
  -- Bars and lines
  { import = "astrocommunity/bars-and-lines/dropbar-nvim" }, -- function names at top
  { import = "astrocommunity.bars-and-lines.vim-illuminate" }, -- highlight words under cursor
  { import = "astrocommunity.bars-and-lines.scope-nvim" }, -- adds the scrollbar to the right hand side
  -- { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  -- { import = "astrocommunity.bars-and-lines.statuscol-nvim" },
  -- { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
}
