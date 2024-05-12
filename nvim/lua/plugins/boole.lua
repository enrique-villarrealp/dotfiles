return {
  "nat-418/boole.nvim",
  event = "BufEnter",
  opts = {
    mappings = {
      increment = "<C-a>",
      decrement = "<C-x>",
      -- true
      -- no
      -- 6
    },
    additions = {
      { "production", "development", "test", "sandbox" },
      { "let", "const" },
      { "start", "end" },
      { "before", "after" },
      { "plus", "minus" },
      { "smart", "truncate" },
      { "left", "right" },
      { "is", "are" },
      { "FULL", "REPLACE_PARTITION" },
      { "-", "_" },
    },
  },
}
