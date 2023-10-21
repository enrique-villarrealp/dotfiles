return {
    "EdenEast/nightfox.nvim" ,
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        groups = {
            all = {
              Substitute = { fg = "palette.white" },
            },
          }
      })

      vim.cmd('colorscheme nightfox')
    end
}
