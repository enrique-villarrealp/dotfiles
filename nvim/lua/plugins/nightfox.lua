return {
    "EdenEast/nightfox.nvim" ,
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        groups = {
            all = {
              Substitute = { fg = "palette.white" },
              InclineNormal = { fg = "#192330", bg = "#cdcecf" },
            },
          }
      })

      vim.cmd('colorscheme nightfox')
    end
}
