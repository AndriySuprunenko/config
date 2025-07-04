return {
	{ "github/copilot.vim" },
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			-- See Configuration section for options
		},
		keys = {
			{ "<leader>cc", "<cmd>CopilotChat<cr>", mode = "n", desc = "Copilot Chat" },
			{ "<leader>ce", "<cmd>CopilotChatExplain<cr>", mode = "v", desc = "Explain Code" },
			{ "<leader>cr", "<cmd>CopilotChatReview<cr>", mode = "v", desc = "Review Code" },
			{ "<leader>cf", "<cmd>CopilotChatFix<cr>", mode = "v", desc = "Fix Code Issues" },
			{ "<leader>co", "<cmd>CopilotChatOptimize<cr>", mode = "v", desc = "Optimize Code" },
			{ "<leader>cd", "<cmd>CopilotChatDocs<cr>", mode = "v", desc = "Generate Docs" },
			{ "<leader>ct", "<cmd>CopilotChatTests<cr>", mode = "v", desc = "Generate Tests" },
			{ "<leader>cm", "<cmd>CopilotChatCommit<cr>", mode = "n", desc = "Generate Commit Message" },
			{ "<leader>cs", "<cmd>CopilotChatCommit<cr>", mode = "v", desc = "Generate Commit for Selection" },
		},
		-- See Commands section for default commands if you want to lazy load on them
	},
}
