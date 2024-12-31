return {
	{
		'lewis6991/gitsigns.nvim',
		version = "*",
		config = function()
			require("config.gitsigns").setup()
		end,
	}
}
