return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "EmranMR/tree-sitter-blade" },
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			auto_install = true,
			sync_install = true,
			ensure_installed = {
				"php",
				"php_only",
				"html",
				"css",
				"javascript",
				"typescript",
				"json",
				"yaml",
				"markdown",
				"graphql",
				"lua",
				"python",
				"go",
			},
			highlight = { enable = true },
			indent = { enable = true },
			autotag = {
				enable = true,
				enable_rename = true,
				enable_close = true,
				enable_close_on_slash = true,
			},
			filetype_add = {
				pattern = { [".*%.blade%.php"] = "blade" },
			},
		})

		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

		parser_config.blade = {
			install_info = {
				url = "https://github.com/EmranMR/tree-sitter-blade",
				files = { "src/parser.c" },
				branch = "main",
			},
			filetype = "blade",
		}
	end,
}
