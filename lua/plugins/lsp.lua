return {
	{
		"neovim/nvim-lspconfig",
		event = "BufReadPre",
		config = function()
			require("config.lsp")
		end,
	},
	{
		"williamboman/mason.nvim",
		version = "*",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright", "gopls", "phpactor" }, -- 按需增加语言
				automatic_installation = true,
			})
		end,
	},
}
