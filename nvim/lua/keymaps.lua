vim.g.mapleader = " "

local keymap = vim.keymap
-- Mason and Lazy
keymap.set("n", "<leader>m", ":Mason<CR>", { desc = "Mason" })
keymap.set("n", "<leader>L", ":Lazy<CR>", { desc = "Lazy" })

-- Nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle nvim-tree" })
-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Show buffers files" })
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string" })
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
-- Explorer
keymap.set("n", "<leader>x", ":Ex<CR>", { desc = "Explorer" })
-- Copy to clipboard
keymap.set("v", "<leader>y", '"+y', { desc = "Copy to clipboard" })
--Delete word
keymap.set("n", "dw", "diw")
keymap.set("n", "cw", "ciw")
-- Select all
keymap.set("n", "<leader>a", "gg<S-v>G", { desc = "Select all" })
-- Split window
keymap.set("n", "<leader>ss", ":split<CR>", { desc = "Horizontal split" })
keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Vertical split" })
keymap.set("n", "<leader>sc", ":close<CR>", { desc = "Close split" })
keymap.set("n", "<leader>so", ":only<CR>", { desc = "Only current window" })
--MOVING BETWEEN WINDOWS
keymap.set("n", "<C-h>", "<C-w>h", {})
keymap.set("n", "<C-j>", "<C-w>j", {})
keymap.set("n", "<C-k>", "<C-w>k", {})
keymap.set("n", "<C-l>", "<C-w>l", {})
-- Harpoon
keymap.set("n", "<leader>hm", ':lua require("harpoon.mark").add_file()<CR>', { desc = "Mark file" })
keymap.set("n", "<leader>ht", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { desc = "Show the list of liles" })
keymap.set("n", "<leader>hn", ':lua require("harpoon.ui").nav_next()<CR>', { desc = "Next file" })
keymap.set("n", "<leader>hp", ':lua require("harpoon.ui").nav_prev()<CR>', { desc = " Previous file" })
-- todo
keymap.set("n", "<leader>tt", ":TodoLocList<CR>", { desc = "Show TODO" })
keymap.set("n", "<leader>tn", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })
