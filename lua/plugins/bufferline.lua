-- lua/plugins/bufferline.lua

return {
  "akinsho/bufferline.nvim", -- Use the full repository name here to avoid issues
  opts = function(_, opts)
    opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
      mode = "buffers", -- Display buffers instead of tabs
      -- style_preset = require("bufferline").style_preset.no_bold, -- No bold, more subtle look
      separator_style = "slant", -- Style for separating buffer segments
      always_show_bufferline = true, -- Always display bufferline even with a single buffer
      show_buffer_close_icons = false, -- Hide buffer close icons for a cleaner look
      show_close_icon = false, -- Hide the global close icon
      enforce_regular_tabs = true, -- Allow dynamic resizing of tabs
      diagnostics = "nvim_lsp", -- Show LSP diagnostics in bufferline
      diagnostics_indicator = function(count, level, _, _)
        local icon = level:match "error" and " " or " "
        return " " .. icon .. count
      end,
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "center",
          separator = true,
        },
      },
      color_icons = true, -- Enable filetype icons with colors
      show_tab_indicators = true, -- Show indicator for modified tabs
      persist_buffer_sort = true, -- Persist buffer order after closing and opening files
      custom_filter = function(buf, buf_nums)
        -- Only show normal and NvimTree buffers
        if vim.bo[buf].filetype ~= "help" then return true end
      end,
      hover = {
        enabled = true,
        delay = 200,
        reveal = { "close" },
      },
      groups = {
        options = {
          toggle_hidden_on_enter = true, -- Reveal hidden groups upon entering them
        },
        items = {
          {
            name = "Tests",
            -- highlight = { underline = true, sp = "#ff9e64" }, -- Highlight group
            icon = " ", -- Icon for test buffers
            matcher = function(buf) return buf.name:match "_test" or buf.name:match "_spec" end,
          },
          {
            name = "Docs",
            -- highlight = { undercurl = true, sp = "#10b981" }, -- Highlight group
            icon = " ", -- Icon for documentation files
            matcher = function(buf) return buf.name:match "%.md" or buf.name:match "%.txt" end,
          },
          require("bufferline.groups").builtin.ungrouped,
        },
      },
      sort_by = function(buffer_a, buffer_b)
        -- Sort by the modification time of buffers
        local modified_a = vim.fn.getftime(buffer_a.path)
        local modified_b = vim.fn.getftime(buffer_b.path)
        return modified_a > modified_b
      end,
    })

    return opts
  end,
}
