return {
  "glepnir/lspsaga.nvim",
  -- lazy = false,
  event = 'LspAttach',
  config = function()
    require("lspsaga").setup({
      -- keybinds for navigation in lspsaga window
      move_in_saga = { prev = "<C-k>", next = "<C-j>" },

      -- do not show winbar 
      symbol_in_winbar = { enable = false, },

      -- use enter to open file with finder
      finder_action_keys = {
        open = "<CR>",
      },
      -- use enter to open file with definition preview
      definition_action_keys = {
        edit = "<CR>",
      },
    })
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
}
