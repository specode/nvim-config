local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body) -- 使用 LuaSnip 展开代码片段
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-Space>"] = cmp.mapping.complete(),      -- 手动触发补全
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- 确认补全项
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item() -- 选择下一个补全项
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump() -- 跳转到下一个片段
			else
				fallback()   -- 默认行为
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item() -- 选择上一个补全项
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1) -- 跳转到上一个片段
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
		{ name = "copilot" }, -- Copilot 源
		{ name = "nvim_lsp" }, -- LSP 源
		{ name = "luasnip" }, -- 代码片段源
	}, {
		{ name = "buffer" }, -- 缓冲区源
		{ name = "path" }, -- 文件路径源
	}),
})
