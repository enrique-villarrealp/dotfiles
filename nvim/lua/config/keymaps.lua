local keymap = vim.keymap

local builtin = require("telescope.builtin")
local utils = require("telescope.utils")

-- Generic
keymap.set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

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

-- Telescope
keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap.set("n", "<leader>fF", function() builtin.find_files({ cwd = utils.buffer_dir() }) end, { desc = "Find files (cwd)" })
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Grep" })
keymap.set("n", "<leader>fG", function() builtin.live_grep({ cwd = utils.buffer_dir() }) end, { desc = "Grep (cwd)" })
keymap.set("n", "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Find in Buffer" })

-- Git
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Branches" })
keymap.set("n", "<leader>gs", "<cmd>Neogit<cr>", { desc = "Neogit Status" })
keymap.set("n", "<leader>gp", "<cmd>Neogit pull<cr>", { desc = "Neogit Pull" })
keymap.set("n", "<leader>gP", "<cmd>Neogit push<cr>", { desc = "Neogit Push" })

-- Buffers
keymap.set("n", "<leader>,", "<cmd>Telescope buffers<cr>", { desc = "List buffers" })
keymap.set("n", "<leader>p", "<cmd>BufferLinePick<cr>", { desc = "Pick buffers" })
keymap.set("n", "<leader>bO", "<cmd>BufferLineCloseOthers<cr>", { desc = "Delete other buffers" })
keymap.set("n", "<leader>bp", "<cmd>BufferLineTogglePin<cr>", { desc = "Pin buffer" })
keymap.set("n", "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<cr>", { desc = "Delete non-pinned buffers" })

-- LSP Stuff
keymap.set("n", "<leader>la", "<cmd>Lspsaga code_action<cr>", { desc = "Code actions" })
keymap.set("n", "<leader>lr", "<cmd>Lspsaga finder<cr>", { desc = "Find references" })
keymap.set("n", "<leader>ld", "<cmd>Lspsaga peek_definition<cr>", { desc = "Peek definition" })
keymap.set("n", "<leader>lD", "<cmd>Lspsaga goto_definition<cr>", { desc = "Go to definition" })
keymap.set("n", "<leader>ln", "<cmd>Lspsaga rename<cr>", { desc = "Rename symbol" })
keymap.set("n", "K", "<cmd>Lspsaga hover_doc<cr>", { desc = "Show documentation" })
keymap.set("n", "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Find symbols in file" })
keymap.set("n", "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", { desc = "Find symbols in workspace" })


-- Harpoon
keymap.set("n", "<leader>'", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Add to Harpoon" })
keymap.set("n", "<leader>0", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Show Harpoon" })
keymap.set("n", "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", { desc = "Harpoon Buffer 1" })
keymap.set("n", "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", { desc = "Harpoon Buffer 2" })
keymap.set("n", "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", { desc = "Harpoon Buffer 3" })
keymap.set("n", "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", { desc = "Harpoon Buffer 4" })
keymap.set("n", "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", { desc = "Harpoon Buffer 5" })
keymap.set("n", "<leader>6", "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", { desc = "Harpoon Buffer 6" })
keymap.set("n", "<leader>7", "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", { desc = "Harpoon Buffer 7" })
keymap.set("n", "<leader>8", "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", { desc = "Harpoon Buffer 8" })
keymap.set("n", "<leader>9", "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", { desc = "Harpoon Buffer 9" })
