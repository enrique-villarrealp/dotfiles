local keymap = vim.keymap

local config = function()
  local telescope = require("telescope")
  local actions = require("telescope.actions")

  telescope.setup({
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous"
        },
      },
    },

    pickers = {
      find_files = {
        theme = "dropdown",
        previewer = false,
        hidden = true,
        mappings = {
          i = {
            -- These are Opt-? and Opt-- respectively
            -- I will not be using these in mnemonics in raycast
            ["÷"] = actions.select_vertical,
            ["æ"] = actions.select_horizontal
          },
          n = {
            ["/"] = actions.select_vertical,
            ["-"] = actions.select_horizontal
          },
        },
      },
      live_grep = {
        theme = "dropdown",
        previewer = true,
      },
      git_branches = {
        mappings = {
          i = {
            ["C-S-m"] = actions.git_merge_branch,
          }
        }
      },
      buffers = {
        theme = "dropdown",
        previewer = false,
      }
    },
  })
  
  require("telescope").load_extension("advanced_git_search")
  require("telescope").load_extension("harpoon")

end

return {
  "nvim-telescope/telescope.nvim",
  version = "0.1.*",
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
