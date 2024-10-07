-- lua/plugins/bufferline.lua

return {
  "akinsho/bufferline.nvim", -- Use the full repository name here to avoid issues
  opts = function(_, opts)
    opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
      separator_style = "slant", -- Example separator style, adjust as needed
      always_show_bufferline = true,
      show_buffer_close_icons = false,
      show_close_icon = false,
      enforce_regular_tabs = false,
      -- diagnostics = "nvim_lsp", -- Enable LSP diagnostics in the bufferline
    })

    return opts
  end,
}
