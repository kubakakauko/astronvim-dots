-- lua/plugins/noice.lua

return {
  "noice.nvim",
  opts = function(_, opts)
    opts.presets.bottom_search = false
    opts.lsp = {
      signature = { enabled = false }, -- Disable signature help if you prefer
      progress = { enabled = false }, -- Disable LSP progress notifications
      message = { enabled = true }, -- Enable general LSP messages to be handled by Noice
      override = {
        -- Enable Noice to handle the following LSP handlers/utilities:
        ["vim.lsp.handlers['textDocument/signatureHelp']"] = true,
        ["vim.lsp.handlers['window/showMessage']"] = true,
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    }
    return opts
  end,
}
