local keymap = vim.keymap

local builtin = require("telescope.builtin")
local utils = require("telescope.utils")

-- Oil Nvim
keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory" })

-- windows
keymap.set("n", "<leader>ww", "<C-W>p", { desc = "Other window", remap = true })
keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
keymap.set("n", "<leader>/", "<C-W>v", { desc = "Split window right", remap = true })
keymap.set("n", "<leader>wh", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
keymap.set("n", "<leader>wj", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
keymap.set("n", "<leader>wk", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
keymap.set("n", "<leader>wl", "<cmd>wincmd l<cr>", { desc = "Go to right window" })

-- indentation
keymap.set("v", ">", ">gv")
keymap.set("v", "<", "<gv")

-- Finding files
keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap.set("n", "<C-p>", "<cmd>Telescope git_files<cr>", { desc = "Find files" })
keymap.set("n", "<leader>fF", function() builtin.find_files({ cwd = utils.buffer_dir() }) end, { desc = "Find files (cwd)" })

-- Search
keymap.set("n", "<leader>sg", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", { desc = "Grep" })
keymap.set("n", "<leader>sG", function() builtin.live_grep({ cwd = utils.buffer_dir() }) end, { desc = "Grep (cwd)" })
keymap.set("n", "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Find in Buffer" })
keymap.set("n", "<leader>sr", function() require("spectre").open() end, { desc = "Replace in files (spectre)" })
keymap.set("n", "<leader>sr", function() require("spectre").open() end, { desc = "Replace in files (spectre)" })
keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {desc = "Search current word"})

-- Git
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Branches" })

keymap.set("n", "<leader>gs", "<cmd>Neogit<cr>", { desc = "Neogit Status" })
keymap.set("n", "<leader>gp", "<cmd>Neogit pull<cr>", { desc = "Neogit Pull" })
keymap.set("n", "<leader>gP", "<cmd>Neogit push<cr>", { desc = "Neogit Push" })
keymap.set("n", "<leader>gi", "<cmd>AdvancedGitSearch<cr>", { desc = "Advanced Git Search" })

-- Buffers
keymap.set("n", "<leader>,", "<cmd>Telescope buffers<cr>", { desc = "List buffers" })
keymap.set("n", "<leader>p", "<cmd>BufferLinePick<cr>", { desc = "Pick buffers" })
keymap.set("n", "<leader>bO", "<cmd>BufferLineCloseOthers<cr>", { desc = "Delete other buffers" })
keymap.set("n", "<leader>bp", "<cmd>BufferLineTogglePin<cr>", { desc = "Pin buffer" })
keymap.set("n", "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<cr>", { desc = "Delete non-pinned buffers" })

-- LSP Stuff
keymap.set("n", "<leader>la", "<cmd>Lspsaga code_action<cr>", { desc = "Code actions" })
keymap.set("n", "<leader>lpi", "<cmd>PyrightOrganizeImports<cr>", { desc = "Organize python imports" })
keymap.set("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", { desc = "Find references" })
keymap.set("n", "<leader>fd", "<cmd>Lspsaga peek_definition<cr>", { desc = "Peek definition" })
keymap.set("n", "<leader>fD", "<cmd>Lspsaga goto_definition<cr>", { desc = "Go to definition" })
keymap.set("n", "gD", "<cmd>Lspsaga goto_definition<cr>", { desc = "Go to definition" })
keymap.set("n", "<leader>ln", "<cmd>Lspsaga rename<cr>", { desc = "Rename symbol" })
keymap.set("n", "K", "<cmd>Lspsaga hover_doc<cr>", { desc = "Show documentation" })
keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Find symbols in file" })
keymap.set("n", "<C-t>", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", { desc = "Find symbols in workspace" })
keymap.set("n", "<leader>fS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", { desc = "Find symbols in workspace" })

-- Harpoon
keymap.set("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Add to Harpoon" })
-- keymap.set("n", "<leader>0", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Show Harpoon" })
keymap.set("n", "<leader>ho", "<cmd>Telescope harpoon marks<cr>", { desc = "Show Harpoon" })
keymap.set("n", "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", { desc = "Harpoon Buffer 1" })
keymap.set("n", "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", { desc = "Harpoon Buffer 2" })
keymap.set("n", "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", { desc = "Harpoon Buffer 3" })
keymap.set("n", "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", { desc = "Harpoon Buffer 4" })
keymap.set("n", "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", { desc = "Harpoon Buffer 5" })

-- Zen Mode
keymap.set("n", "<leader>z", "<cmd>ZenMode<cr>", { desc = "Toggle Zen Mode" })
