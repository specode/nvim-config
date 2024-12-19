return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = "*",
		run = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			local lang_config = require("config.lang")

			configs.setup({
				modules = {},
				auto_install = true,
				sync_install = false,
				ignore_install = {},
				ensure_installed = lang_config.treesitter_parsers,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false
				},
				indent = { enable = true },
			})
		end,
	},
}
