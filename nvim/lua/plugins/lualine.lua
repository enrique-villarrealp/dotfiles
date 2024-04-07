local config = function ()
  local theme = require("lualine.themes.dracula")
  local harpoon = require("harpoon.mark")

  theme.normal.c.bg = nil
  theme.visual.c.bg = nil
  theme.insert.c.bg = nil

  local function harpoon_component()
    local total_marks = harpoon.get_length()

    if total_marks == 0 then
      return ""
    end

    local current_mark = "-"

    local mark_idx = harpoon.get_current_index()
    if mark_idx ~= nil then
      current_mark = tostring(mark_idx)
    end

    return string.format("󱡅 %s/%d", current_mark, total_marks)
  end

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

      lualine_c = {
        {
          harpoon_component
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
