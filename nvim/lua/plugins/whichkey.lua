local register = function()
  local whichkey = require("which-key")
  whichkey.register({
    f = {
      name = "file",
    },
    f = {
      name = "Harpoon",
    },
    w = {
      name = "window",
    },
    b = {
      name = "buffer",
    },
    l = {
      name = "lsp",
    },
    g = {
      name = "git",
    },
    s = {
      name = "search",
    },
  }, { prefix = "<leader>" })

  local i = {
      [" "] = "Whitespace",
      ['"'] = 'Balanced "',
      ["'"] = "Balanced '",
      ["`"] = "Balanced `",
      ["("] = "Balanced (",
      [")"] = "Balanced ) including white-space",
      [">"] = "Balanced > including white-space",
      ["<lt>"] = "Balanced <",
      ["]"] = "Balanced ] including white-space",
      ["["] = "Balanced [",
      ["}"] = "Balanced } including white-space",
      ["{"] = "Balanced {",
      ["?"] = "User Prompt",
      _ = "Underscore",
      a = "Argument",
      b = "Balanced ), ], }",
      c = "Class",
      f = "Function",
      o = "Block, conditional, loop",
      q = "Quote `, \", '",
      t = "Tag",
    }
  local a = vim.deepcopy(i)

  whichkey.register({
    mode = {"o", "x"},
    i = i,
    a = a,
  })
end


return {
    "folke/which-key.nvim",
    event = "VeryLazy",

    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,

    opts = {},

    config = register
}
