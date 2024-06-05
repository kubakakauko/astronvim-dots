-- none-ls.lua

-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  lazy = false,
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Define custom sources for eslint_d and htmlhint
    local eslint_d = {
      method = null_ls.methods.DIAGNOSTICS,
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
      generator = null_ls.generator {
        command = "eslint_d",
        args = { "--stdin", "--stdin-filename", "$FILENAME", "--format", "json" },
        to_stdin = true,
        from_stderr = false,
        format = "json",
        on_output = function(params)
          -- Parse eslint_d output and convert to LSP diagnostics
          local diagnostics = {}
          for _, result in ipairs(params.output) do
            for _, message in ipairs(result.messages) do
              table.insert(diagnostics, {
                row = message.line,
                col = message.column,
                end_row = message.endLine,
                end_col = message.endColumn,
                source = "eslint_d",
                message = message.message,
                severity = null_ls.diagnostics.severities[message.severity],
              })
            end
          end
          return diagnostics
        end,
      },
    }

    local htmlhint = {
      method = null_ls.methods.DIAGNOSTICS,
      filetypes = { "html" },
      generator = null_ls.generator {
        command = "htmlhint",
        args = { "--format", "json", "-" },
        to_stdin = true,
        from_stderr = false,
        format = "json",
        on_output = function(params)
          -- Parse htmlhint output and convert to LSP diagnostics
          local diagnostics = {}
          for _, message in ipairs(params.output) do
            table.insert(diagnostics, {
              row = message.line,
              col = message.col,
              source = "htmlhint",
              message = message.message,
              severity = null_ls.diagnostics.severities["warning"],
            })
          end
          return diagnostics
        end,
      },
    }

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set formatters
      null_ls.builtins.formatting.prettier.with {
        filetypes = { "javascript", "typescript", "css", "html", "json", "yaml", "markdown" },
      },
      -- Set custom linters
      eslint_d,
      htmlhint,
      null_ls.builtins.diagnostics.stylelint,
    }
    return config -- return final config table
  end,
}
