-- 可切换的配色主题集合，全部支持明/暗两种变体
-- 切换：:Theme 命令或 <leader>ut；切换会被记住，并跟随系统明暗自动应用对应变体
return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		opts = {
			background = { light = "latte", dark = "mocha" },
		},
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "storm",
			light_style = "day",
		},
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
}
