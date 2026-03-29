return {
	{
		'nvim-lualine/lualine.nvim',
		event = "VeryLazy",
		version = "*",
		config = function()
			require('lualine').setup({
				options = {
					theme = 'tokyonight',
				},
			})
		end
	}
}
