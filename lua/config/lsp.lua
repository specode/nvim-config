local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- 快捷键配置
local on_attach = function(_, bufnr)
	print("LSP attached to buffer " .. bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }
	local map = vim.keymap.set

	map("n", "gd", vim.lsp.buf.definition, opts)
	map("n", "<leader>dt", function()
		vim.cmd("tab split")
		vim.lsp.buf.definition()
	end, opts)
	map("n", "<leader>dv", function()
		vim.cmd("rightbelow vsplit")
		vim.lsp.buf.definition()
	end, opts)
	map("n", "gr", vim.lsp.buf.references, opts)
	map("n", "gi", vim.lsp.buf.implementation, opts)
	map("n", "K", vim.lsp.buf.hover, opts)
	map("n", "<leader>rn", vim.lsp.buf.rename, opts)
	map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	map("n", "[d", function()
		vim.diagnostic.jump({ count = -1, float = true })
	end, opts)
	map("n", "]d", function()
		vim.diagnostic.jump({ count = 1, float = true })
	end, opts)
	map("n", "<leader>f", function()
		vim.lsp.buf.format({ async = true })
	end, opts)
end

-- 全局默认配置
vim.lsp.config('*', {
	capabilities = capabilities,
	on_attach = on_attach
})

-- lua_ls 配置
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
				path = vim.split(package.path, ";"),
			},
			diagnostics = {
				globals = { "vim" },
				disable = { "inconsistent-type-checking" },
			},
			workspace = {
				library = { [vim.fn.expand("$VIMRUNTIME/lua")] = true },
				checkThirdParty = false,
			},
		},
	},
})
