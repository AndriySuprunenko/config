-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
keymap.set("n", "x", '"_x', {})
-- Select all
keymap.set("n", "<leader>a", "gg<S-v>G", { desc = "Select all" })
-- tabs
keymap.set("n", "<leader>tx", "<cmd>bdelete<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<tab>", "<cmd>bnext<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<S-tab>", "<cmd>bprevious<CR>", { desc = "Go to previous tab" }) --  go to previous tab
