return {
  'akinsho/bufferline.nvim',
  version = "*",
  event="VeryLazy",
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      separator_style = 'slant',
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)
  end, 
}
