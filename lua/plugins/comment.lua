return {
	{
		'numToStr/Comment.nvim',
		version = "*",
		config = function()
			require("config.comment").setup()
		end
	}
}
