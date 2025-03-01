local M = {}

M.setup = function()
	require("nvim-tree").setup({
		on_attach = function(bufnr)
			local api = require("nvim-tree.api")

			-- 自定义快捷键
			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- 基础操作
			vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
			vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory"))
			vim.keymap.set("n", "v", api.node.open.vertical, opts("Open: Vertical Split"))

			-- 文件操作
			vim.keymap.set("n", "a", api.fs.create, opts("Create"))
			vim.keymap.set("n", "d", api.fs.remove, opts("Delete"))
			vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
			vim.keymap.set("n", "x", api.fs.cut, opts("Cut"))
			vim.keymap.set("n", "c", api.fs.copy.node, opts("Copy"))
			vim.keymap.set("n", "p", api.fs.paste, opts("Paste"))

			-- 目录操作
			vim.keymap.set("n", "R", api.tree.reload, opts("Refresh"))
			vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
		end,
		-- 其他配置
		view = {
			width = 30,
		},
	})
end

return M
