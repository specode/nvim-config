return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				-- suggestion = { enabled = false }, -- 禁用默认的 inline suggestions
				-- panel = { enabled = false }, -- 禁用面板
			})
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- LSP 补全源
			"hrsh7th/cmp-buffer", -- 当前缓冲区补全
			"hrsh7th/cmp-path", -- 文件路径补全
			"L3MON4D3/LuaSnip", -- 代码片段引擎
			"saadparwaiz1/cmp_luasnip", -- LuaSnip 补全源
			-- Copilot 补全源
			{
				"zbirenbaum/copilot-cmp",
				after = { "copilot.lua" },
			},
		},
		config = function()
			require("copilot_cmp").setup() -- Copilot 补全源支持
			require("config.cmp") -- 引用 cmp 的配置文件
			require("luasnip.loaders.from_vscode").lazy_load() -- 自动加载 VSCode 风格的片段
		end,
	},
}
