local opts = {
  ensure_installed = {
    "efm",
    "bashls",
    "pyright",
    "lua_ls",
    "jsonls",
    "yamlls",
  },

  automatic_installation = true,
}

return {
  "williamboman/mason-lspconfig.nvim",
  opts = opts,
  event = "BufReadPre",
  dependencies = "williamboman/mason.nvim",
}
