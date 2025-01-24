local cmp = require("cmp")

cmp.setup({
	snippet = {
	},
	mapping = cmp.mapping.preset.insert({
		["<C-Space>"] = cmp.mapping.complete(),      -- 手动触发补全
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- 确认补全项
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item() -- 选择下一个补全项
			else
				fallback()   -- 默认行为
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item() -- 选择上一个补全项
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
		{ name = "copilot" }, -- Copilot 源
		{ name = "nvim_lsp" }, -- LSP 源
	}, {
		{ name = "buffer" }, -- 缓冲区源
		{ name = "path" }, -- 文件路径源
	}),
})
