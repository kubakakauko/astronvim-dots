if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        -- "tsserver", -- JavaScript/TypeScript
        "tailwindcss", -- TailwindCSS
        -- "eslint", -- JavaScript/TypeScript
        "cssls", -- CSS
        "html", -- HTML
        "typos_lsp", -- Markdown
        -- add more arguments for adding more language servers
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "stylua",
        -- "eslint_d", -- Linter for JavaScript/TypeScript
        "stylelint", -- Linter for CSS
        "htmlhint", -- Linter for HTML
        -- "eslint_lsp",
        -- "semgrep",
        "gitsigns",
        "dictionary",
        "write_good",
        -- "rustywind",
        -- "pylint",
        "black",
        -- "prettierd",
        "jsonlint",
        "markdownlint",

        -- add more arguments for adding more null-ls sources
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "python",
        -- add more arguments for adding more debuggers
      })
    end,
  },
}
