return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", {}),
			vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>", {}),
			renderer = {
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
					},
				},
			},
		})
	end,
}
