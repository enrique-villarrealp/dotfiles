return {
  "NeogitOrg/neogit",
  lazy=false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
  },
  cmd = { "Neogit", "NeogitResetState" },
  opts = {
    integrations = {
      diffview = true,
    },
    kind = "split"
  },
}

