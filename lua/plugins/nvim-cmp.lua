return {
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- LSP 补全源
			"hrsh7th/cmp-buffer", -- 当前缓冲区补全
			"hrsh7th/cmp-path", -- 文件路径补全
			"L3MON4D3/LuaSnip", -- 代码片段引擎
			"saadparwaiz1/cmp_luasnip", -- LuaSnip 补全源
		},
		config = function()
			require("config.cmp") -- 引用 cmp 的配置文件
			require("config.snippets") -- 引用 snip 的配置文件
		end,
	},
}
