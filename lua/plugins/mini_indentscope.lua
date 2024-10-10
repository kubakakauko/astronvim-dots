-- TODO: We remapped the keys to be more compatible with colemak however, moving with i is a bad practice anyways.
return {
  "echasnovski/mini.indentscope",
  event = "User AstroFile",
  opts = function()
    return {
      symbol = require("astrocore").plugin_opts("indent-blankline.nvim").context_char or "▏",
      options = {
        try_as_border = true,
      },
      mappings = {
        object_scope = "gy", -- Remap from "ii" to "gy"
        object_scope_with_border = "gY", -- Remap from "ai" to "gY"
        goto_top = "[;", -- Remap from "[i" to "[y"
        goto_bottom = "];", -- Remap from "]i" to "]y"
      },
    }
  end,
  dependencies = {
    { "lukas-reineke/indent-blankline.nvim", optional = true, opts = { scope = { enabled = false } } },
    {
      "AstroNvim/astrocore",
      opts = {
        autocmds = {
          mini_indentscope = {
            {
              event = "FileType",
              desc = "Disable indentscope for certain filetypes",
              callback = function(event)
                if vim.b[event.buf].miniindentscope_disable == nil then
                  local filetype = vim.bo[event.buf].filetype
                  local blankline_opts = require("astrocore").plugin_opts "indent-blankline.nvim"
                  if
                    vim.tbl_contains(blankline_opts.filetype_exclude or {
                      "aerial",
                      "alpha",
                      "dashboard",
                      "help",
                      "lazy",
                      "mason",
                      "neo-tree",
                      "NvimTree",
                      "neogitstatus",
                      "notify",
                      "startify",
                      "toggleterm",
                      "Trouble",
                    }, filetype)
                  then
                    vim.b[event.buf].miniindentscope_disable = true
                  end
                end
              end,
            },
            {
              event = "BufWinEnter",
              desc = "Disable indentscope for certain buftypes",
              callback = function(event)
                if vim.b[event.buf].miniindentscope_disable == nil then
                  local buftype = vim.bo[event.buf].buftype
                  local blankline_opts = require("astrocore").plugin_opts "indent-blankline.nvim"
                  if
                    vim.tbl_contains(
                      blankline_opts.buftype_exclude or { "nofile", "prompt", "quickfix", "terminal" },
                      buftype
                    )
                  then
                    vim.b[event.buf].miniindentscope_disable = true
                  end
                end
              end,
            },
            {
              event = "TermOpen",
              desc = "Disable indentscope for terminals",
              callback = function(event)
                if vim.b[event.buf].miniindentscope_disable == nil then
                  vim.b[event.buf].miniindentscope_disable = true
                end
              end,
            },
          },
        },
      },
    },
  },
}
