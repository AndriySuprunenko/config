vim.g.mapleader = " "
vim.g.maplocalleader = ","

local keymap = vim.keymap
keymap.set("n", "x", '"_x', {})
-- Mason and Lazy
keymap.set("n", "<leader>m", ":Mason<CR>", { desc = "Mason" })
keymap.set("n", "<leader>L", ":Lazy<CR>", { desc = "Lazy" })

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Show buffers files" })
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string" })
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
-- Explorer
keymap.set("n", "<leader>e", ":lua MiniFiles.open()<CR>", { desc = "Explorer" })
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
-- tabs
keymap.set("n", "<leader>tx", "<cmd>bdelete<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<tab>", "<cmd>bnext<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<S-tab>", "<cmd>bprevious<CR>", { desc = "Go to previous tab" }) --  go to previous tab
