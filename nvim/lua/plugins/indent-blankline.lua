local config = function ()
  local ibl = require("ibl").setup()

  whitespace = {
    remove_blankline_trail = true,
  }

  indent = {
    char = "│",
    tab_char = "│",
  }

  scope = {
    enabled = false,
  }

  exclude_filetypes = {
      "help",
      "alpha",
      "dashboard",
      "neo-tree",
      "Trouble",
      "lazy",
      "mason",
      "notify",
      "toggleterm",
      "lazyterm",
  }

end


return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufNewFile" },
  main = "ibl",
  config = config
}
