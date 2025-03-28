-- 终端颜色配置
vim.opt.termguicolors = true

-- 状态栏
vim.opt.laststatus = 3

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
