return {
	{
		"nvim-tree/nvim-tree.lua",
		event = "BufReadPre",
		version = "*",
		dependencies = { "echasnovski/mini.icons" },
		config = function()
			require("config.nvim-tree").setup()
		end,
	},
}
