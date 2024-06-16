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
}
