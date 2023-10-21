config = function()
    require("tint").setup({
      tint = -70,
      saturation = 0.6,
      tint_background_colors = false,
      highlight_ignore_patterns = { 
        "Normal",
        "NormalNC",
        "Telescope*",
        "Flash*", 
        "Comment" 
      },

    window_ignore_function = function(winid)
      local bufid = vim.api.nvim_win_get_buf(winid)
      local buftype = vim.api.nvim_buf_get_option(bufid, "buftype")
      local floating = vim.api.nvim_win_get_config(winid).relative ~= ""

      -- Do not tint `terminal` or floating windows, tint everything else
      return buftype == "terminal" or floating
    end
    })
end


return {
  "levouh/tint.nvim",
  priority=1100,
  lazy=false,
  config = config
}
