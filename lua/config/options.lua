-- 终端颜色配置
vim.opt.termguicolors = true

-- 状态栏
vim.opt.laststatus = 3

-- 提示末尾空格
vim.opt.list = true

-- 缩进配置
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

-- PHP 缩进配置
vim.api.nvim_create_autocmd("FileType", {
	pattern = "php",
	callback = function()
		vim.opt_local.tabstop = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.shiftwidth = 4
		vim.opt_local.expandtab = true
	end,
})

-- 显示行号
vim.opt.number = true

-- 剪切板共享
vim.opt.clipboard = 'unnamedplus'

-- 禁用 netrw 插件
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 诊断信息配置
vim.diagnostic.config({
	virtual_text = {
		prefix = "●", -- 错误符号前缀
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",  -- Nerd Font error icon
			[vim.diagnostic.severity.WARN] = "",   -- Nerd Font warning icon
			[vim.diagnostic.severity.HINT] = "",   -- Nerd Font hint icon
			[vim.diagnostic.severity.INFO] = ""    -- Nerd Font info icon
		}
	},                      -- 自定义诊断符号
	underline = true,       -- 显示下划线
	update_in_insert = false, -- 不在插入模式更新诊断
	severity_sort = true,   -- 按严重程度排序
	float = {
		border = "rounded", -- 浮动窗口边框样式
		header = "",        -- 去除标题
	}
})
