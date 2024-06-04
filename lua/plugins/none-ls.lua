-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

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
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      -- Set formatters
      null_ls.builtins.formatting.prettier.with({
        filetypes = { "javascript", "typescript", "css", "html", "json", "yaml", "markdown" }
      }),
      -- Set linters
      null_ls.builtins.diagnostics.eslint_d,
      null_ls.builtins.diagnostics.stylelint,
      null_ls.builtins.diagnostics.htmlhint,
    }
    return config -- return final config table
  end,
}
