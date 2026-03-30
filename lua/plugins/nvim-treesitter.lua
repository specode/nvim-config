return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
		config = function()
			local lang_config = require("config.lang")

			require("nvim-treesitter").setup({
				-- Configuration options for nvim-treesitter main branch
			})

			-- Handle ensure_installed
			if lang_config.treesitter_parsers == "all" then
				require("nvim-treesitter").install("all")
			elseif type(lang_config.treesitter_parsers) == "table" then
				require("nvim-treesitter").install(lang_config.treesitter_parsers)
			end

			-- Enable highlight and indent for all filetypes by default
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "*",
				callback = function()
					-- Start treesitter highlight
					pcall(vim.treesitter.start)
					-- Enable treesitter based folding
					vim.wo[0][0].foldmethod = "expr"
					vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
				end,
			})
		end
	},
}
