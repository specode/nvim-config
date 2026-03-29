return {
	{
		'lewis6991/gitsigns.nvim',
		event = "BufReadPre",
		version = "*",
		config = function()
			require("config.gitsigns").setup()
		end
	}
}
