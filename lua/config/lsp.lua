local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- 处理 LSP 启动时的 on_attach
local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "<leader>dt", function()
		vim.lsp.buf.definition()
		vim.cmd("tabnew")
	end, opts)
	vim.keymap.set("n", "<leader>dv", function()
		vim.lsp.buf.definition()
		vim.cmd("rightbelow vsplit")
	end, opts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", "<leader>f", function()
		vim.lsp.buf.format({ async = true }) -- 异步格式化
	end, opts)
end

-- 配置 LSP 服务
mason_lspconfig.setup_handlers({
	function(server_name)
		lspconfig[server_name].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
	end,
	["lua_ls"] = function()
		lspconfig.lua_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			settings = {
				Lua = {
					runtime = { version = "LuaJIT", path = vim.split(package.path, ';') },
					diagnostics = { globals = { "vim" }, disable = { 'inconsistent-type-checking' } },
					workspace = {
						-- library = vim.api.nvim_get_runtime_file("", true),
						library = { [vim.fn.expand("$VIMRUNTIME/lua")] = true },
						checkThirdParty = false,
					},
				},
			},
		})
	end,
})
