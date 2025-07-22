return {
	"NvChad/nvim-colorizer.lua",
	event = { "BufReadPre", "BufNewFile" },
	config = true,
	opts = {
		user_default_optioms = {
			tailwimd = true,
		},
	},
}
