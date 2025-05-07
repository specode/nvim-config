return {
	{
		"neovim/nvim-lspconfig",
		event = "BufReadPre",
		config = function()
			require("config.lsp")
		end
	},
	{
		"mason-org/mason.nvim",
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
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
		config = function()
			local lang_config = require("config.lang")
			require("mason-lspconfig").setup({
				automatic_enable = true,
				ensure_installed = lang_config.lsp_servers,
			})
		end
	},
}
