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
		end
	},
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- LSP 补全源
			"hrsh7th/cmp-buffer", -- 当前缓冲区补全
			"hrsh7th/cmp-path", -- 文件路径补全
			-- Copilot 补全源
			{
				"zbirenbaum/copilot-cmp",
				after = { "copilot.lua" },
			},
		},
		config = function()
			require("copilot_cmp").setup() -- Copilot 补全源支持
			require("config.cmp") -- 引用 cmp 的配置文件
		end
	},
}
