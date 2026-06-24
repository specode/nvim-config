return {
	{
		'nvim-lualine/lualine.nvim',
		event = "VeryLazy",
		version = "*",
		config = function()
			local function setup()
				require('lualine').setup({
					options = {
						theme = 'auto', -- 跟随当前配色自动选择状态栏配色
					},
				})
			end
			setup()
			-- 切换主题后刷新状态栏，使其跟随新配色
			vim.api.nvim_create_autocmd("ColorScheme", {
				callback = setup,
			})
		end
	}
}
