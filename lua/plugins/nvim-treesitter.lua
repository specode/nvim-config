return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = "*",
		run = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				modules = {},
				auto_install = true,
				sync_install = false,
				ignore_install = {},
				ensure_installed = {"go", "php", "lua", "python", "javascript", "typescript", "html", "css"},
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false
				},
				indent = { enable = true },
			})
		end,
	},
}
