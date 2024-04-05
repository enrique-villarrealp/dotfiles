local keymap = vim.keymap

vim.api.nvim_create_autocmd("FileType", {
  pattern = "TelescopeResults",
  callback = function(ctx)
    vim.api.nvim_buf_call(ctx.buf, function()
      vim.fn.matchadd("TelescopeParent", "\t\t.*$")
      vim.api.nvim_set_hl(0, "TelescopeParent", { link = "Comment" })
    end)
  end,
})

local function formattedName(_, path)
  local tail = vim.fs.basename(path)
  local parent = vim.fs.dirname(path)
  if parent == "." then
    return tail
  end
  return string.format("%s\t\t%s", tail, parent)
end

local config = function()
  local telescope = require("telescope")
  local actions = require("telescope.actions")

  telescope.setup({
    file_ignore_patterns = { "%.git/." },
    defaults = {
      sorting_strategy = "descending",
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous"
        },
      },
    },

    pickers = {
      find_files = {
        previewer = false,
        hidden = true,
        sorting_strategy='ascending',
        path_display = formattedName,
        layout_config = {
          height = 0.4,
          prompt_position = "top",
          preview_cutoff = 120,
        },
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
        layout_config = {
          height = 0.4,
          prompt_position = "top",
          preview_cutoff = 120,
        },
      },
      git_branches = {
        mappings = {
          i = {
            ["C-S-m"] = actions.git_merge_branch,
          }
        }
      },
      buffers = {
        previewer = false,
        path_display = formattedName,
        sorting_strategy='ascending',
        layout_config = {
          height = 0.4,
          prompt_position = "top",
          preview_cutoff = 120,
        },
        mappings = {
          i = {
            ["<c-d>"] = actions.delete_buffer,
          },
          n = {
            ["<c-d>"] = actions.delete_buffer,
          },
        },
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
        "nvim-telescope/telescope-live-grep-args.nvim",
        version = "^1.0.0",
    },
  },
  config = config
}
