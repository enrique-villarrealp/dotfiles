return {
    "EdenEast/nightfox.nvim" ,
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          groups = {
              all = {
                Substitute = { fg = "palette.white" },
                InclineNormal = { fg = "#192330", bg = "#cdcecf" },
                DropBarCurrentContext = { fg = "palette.white"},
              },
            },
          styles = {
              comments = "italic"
          },
        }
      })

      vim.cmd('colorscheme duskfox')
    end
}
