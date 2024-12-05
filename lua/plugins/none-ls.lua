-- none-ls.lua

if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Formatting sources
      null_ls.builtins.formatting.prettierd.with {
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "vue",
          "css",
          "scss",
          "less",
          "html",
          "json",
          "jsonc",
          "yaml",
          "markdown",
          "markdown.mdx",
          "graphql",
          "handlebars",
          "svelte",
          "astro",
          "navy",
        },
        -- prefer_local = "node_modules/.bin",
      },
      -- null_ls.builtins.formatting.black.with {
      --   extra_args = { "--fast" },
      -- },
      -- null_ls.builtins.diagnostics.pylint.with {
      --   env = function(params) return { PYTHONPATH = params.root } end,
      -- },
      null_ls.builtins.code_actions.gitsigns,
      -- Hover sources
      null_ls.builtins.hover.dictionary,
      null_ls.builtins.diagnostics.write_good,
      -- null_ls.builtins.formatting.rustywind,
      -- null_ls.builtins.diagnostics.semgrep,
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.completion.spell,
      -- require "none-ls.diagnostics.eslint", -- requires none-ls-extras.nvim
    }
    return config -- return final config table
  end,
}
