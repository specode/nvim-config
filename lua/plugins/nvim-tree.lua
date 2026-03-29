return {
	{
		"nvim-tree/nvim-tree.lua",
		event = "BufReadPre",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("config.nvim-tree").setup()
		end,
	},
}
