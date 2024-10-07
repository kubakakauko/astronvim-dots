-- lua/plugins/noice.lua

return {
  "noice.nvim",
  opts = function(_, opts)
    opts.presets.bottom_search = false
    opts.lsp.signature = { enabled = false }
    return opts
  end,
}
