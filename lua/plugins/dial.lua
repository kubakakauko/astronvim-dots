-- lua/plugins/dial.lua

return {
  "monaqa/dial.nvim",
  opts = {
    mappings = {
      v = {
        ["<C-a>"] = {
          function() return require("dial.map").manipulate("increment", "visual") end,
          desc = "Increment",
        },
        ["<C-A>"] = {
          function() return require("dial.map").manipulate("decrement", "visual") end,
          desc = "Decrement",
        },
      },
      x = {
        ["g<C-a>"] = {
          function() return require("dial.map").manipulate("increment", "gvisual") end,
          desc = "Increment",
        },
        ["g<C-A>"] = {
          function() return require("dial.map").manipulate("decrement", "gvisual") end,
          desc = "Decrement",
        },
      },
      n = {
        ["<C-a>"] = {
          function() return require("dial.map").manipulate("increment", "normal") end,
          desc = "Increment",
        },
        ["<C-A>"] = {
          function() return require("dial.map").manipulate("decrement", "normal") end,
          desc = "Decrement",
        },
        ["g<C-a>"] = {
          function() return require("dial.map").manipulate("increment", "gnormal") end,
          desc = "Increment",
        },
        ["g<C-A>"] = {
          function() return require("dial.map").manipulate("decrement", "gnormal") end,
          desc = "Decrement",
        },
      },
    },
  },
}
