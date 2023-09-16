return {
  "levouh/tint.nvim",
  config = function()
    require("tint").setup({
      tint = -70,
      saturation = 0.6,
      highlight_ignore_patterns = { "Flash*" },
    })
  end,
}
