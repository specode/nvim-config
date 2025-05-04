return {
	{
		"neovim/nvim-lspconfig",
		event = "BufReadPre",
		config = function()
			require("config.lsp")
		end
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
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
		config = function()
			local lang_config = require("config.lang")
			require("mason-lspconfig").setup({
				ensure_installed = lang_config.lsp_servers,
				automatic_installation = true,
			})
		end
	},
}
