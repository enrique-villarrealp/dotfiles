local config = function ()
  local theme = require("lualine.themes.nord")

  theme.normal.c.bg = nil

  require('lualine').setup {
    options = {
      theme = theme,
      globalstatus = true,
    },

    sections = {
      lualine_a = {
        {
          'mode',
        }
      },

      lualine_b = {
        {
          'branch'
        }
      },

      lualine_y = {
          { "progress", separator = " ", padding = { left = 1, right = 0 } },
          { "location", padding = { left = 0, right = 1 } },
        },

      -- ripped straight from lazyvim lol
      lualine_z = {
        function()
          return " " .. os.date("%R")
        end
      },
    }
  }
end

return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  config = config
}
