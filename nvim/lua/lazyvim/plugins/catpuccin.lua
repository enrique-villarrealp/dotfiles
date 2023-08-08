return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  ---@class CatppuccinOptions
  opts = {
    flavour = "mocha",
    transparent_background = true,
    integrations = {
      noice = true,
      notify = true,
      barbecue = {
        dim_dirname = true,
        bold_basename = true,
        dim_context = false,
        alt_background = false,
      },
    },
    custom_highlights = function(color)
      return {
        NormalFloat = { fg = "#FFFFFF", bg = "#222222" },
      }
    end,
  },
}
