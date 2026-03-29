return {
	{
		'numToStr/Comment.nvim',
		event = "VeryLazy",
		version = "*",
		config = function()
			require("config.comment").setup()
		end
	}
}
