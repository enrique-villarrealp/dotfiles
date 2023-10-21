local keymap = vim.keymap

local config = function()
  local telescope = require("telescope")

  telescope.setup({
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
      },
    },

    pickers = {
      find_files = {
        theme = "dropdown",
        previewer = false,
        hidden = true,
      },

      live_grep = {
        theme = "dropdown",
        previewer = true,
      },

      buffers = {
        theme = "dropdown",
        previewer = false,
      }
    },
  })
  
  require("telescope").load_extension("advanced_git_search")

end

return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.3",
  lazy = false,
  dependencies = { 
    "nvim-lua/plenary.nvim",
      { 
        "nvim-telescope/telescope-live-grep-args.nvim" ,
        version = "^1.0.0",
    },
  },
  config = config
}
