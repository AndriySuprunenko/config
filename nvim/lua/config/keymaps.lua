-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map("n", "<leader>a", "gg<S-v>G", { desc = "Select all in file", remap = true })
-- delete word
map("n", "dw", "diw", {})
map("n", "cw", "ciw", {})

map("n", "<leader>hm", ':lua require("harpoon.mark").add_file()<CR>', { desc = "Mark file", remap = true })
map("n", "<leader>ht", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { desc = "Toggle menu", remap = true })
map("n", "<leader>hn", ':lua require("harpoon.ui").nav_next()<CR>', { desc = "Next file", remap = true })
map("n", "<leader>hp", ':lua require("harpoon.ui").nav_prev()<CR>', { desc = "Previous file", remap = true })
