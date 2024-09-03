return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "work",
        path = "/Users/enrique.villarreal/Repos/notes/evp-vault",
      },
    },
    templates = {
      subdir = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },
    disable_frontmatter = true,
    mappings = {
      ["gD"] = {
        action = function()
            return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true},
      },
    }
  },
}
