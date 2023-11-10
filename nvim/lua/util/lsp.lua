local keymap = vim.keymap
local M = {}

-- set keymaps on the active lsp server
M.on_attach = function(client, bufnr)
local opts = { noremap = true, silent = true, buffer = bufnr }

end

M.diagnostic_signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = "" }

return M
