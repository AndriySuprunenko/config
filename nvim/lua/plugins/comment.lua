return {
	{
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
		config = function()
			require("Comment").setup({})
		end,
	},
	{
		"folke/todo-comments.nvim",
		event = "BufReadPre",
		config = function()
			require("todo-comments").setup()
		end,
	},
	{
		"folke/ts-comments.nvim",
		opts = {},
		event = "VeryLazy",
		enabled = vim.fn.has("nvim-0.10.0") == 1,
	},
	{ "tpope/vim-commentary" },
}
