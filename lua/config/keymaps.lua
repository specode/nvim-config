-- 设置 leader 键为 ','
vim.g.mapleader = ','

-- 复制到行尾
vim.keymap.set('n', 'Y', 'y$', { desc = 'Copy to end of line', remap = false, silent = true })

-- 新标签页
vim.keymap.set('n', '<C-t>', ':tabnew<CR>', { desc = 'New tab', remap = false, silent = true })

-- 标签页导航 (Shift+H/L)
vim.keymap.set('n', '<S-H>', 'gT', { desc = 'Previous tab', remap = false, silent = true })
vim.keymap.set('n', '<S-L>', 'gt', { desc = 'Next tab', remap = false, silent = true })

-- 窗口导航 (Ctrl+hjkl)
vim.keymap.set('n', '<C-h>', '<C-w><Left>', { desc = 'Focus left window', remap = false, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w><Down>', { desc = 'Focus down window', remap = false, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w><Up>', { desc = 'Focus up window', remap = false, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w><Right>', { desc = 'Focus right window', remap = false, silent = true })

-- 显示诊断
vim.keymap.set('n', '<leader>e', function()
	vim.diagnostic.open_float(nil, {
		focusable = false,
	})
end, { desc = 'Open diagnostic float' })

-- 跳回
vim.keymap.set("n", "gb", "<C-o>", { noremap = true, silent = true })

-- nvim-tree 配置
vim.keymap.set('n', '<C-e>', function()
	require("nvim-tree.api").tree.toggle()
end, { desc = "nvim-tree: Toggle Tree", noremap = true, silent = true, nowait = true })

-- nvim-tree 定位到当前文件
vim.keymap.set('n', '<leader>nf', function()
	local api = require("nvim-tree.api")
	api.tree.toggle({ focus = false }) -- 先打开树但不聚焦
	vim.defer_fn(function()            -- 延迟执行以确保树已打开
		api.tree.find_file({ focus = true }) -- 定位到当前文件并聚焦
	end, 50)
end, { desc = "nvim-tree: Find File", noremap = true, silent = true, nowait = true })

-- telescope 配置
vim.keymap.set("n", "<C-p>", function()
	require("telescope.builtin").find_files()
end, { noremap = true, silent = true, desc = "Find Files" })

vim.keymap.set("n", "<C-g>", function()
	require("telescope.builtin").live_grep()
end, { noremap = true, silent = true, desc = "Live Grep" })

vim.keymap.set("n", "<leader>fb", function()
	require("telescope.builtin").buffers()
end, { noremap = true, silent = true, desc = "Find Buffers" })

vim.keymap.set("n", "<leader>fh", function()
	require("telescope.builtin").help_tags()
end, { noremap = true, silent = true, desc = "Find Help" })

vim.keymap.set("n", "<leader>fd", function()
	require("telescope.builtin").diagnostics()
end, { noremap = true, silent = true, desc = "Find Diagnostics" })

-- leap 配置
vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap)')
vim.keymap.set('n', 'S', '<Plug>(leap-from-window)')

-- gitsigns 配置
vim.keymap.set('n', ']c', ':Gitsigns next_hunk<CR>', { noremap = true, silent = true, desc = 'Next Git Hunk' })            -- 跳转到下一个 hunk
vim.keymap.set('n', '[c', ':Gitsigns prev_hunk<CR>', { noremap = true, silent = true, desc = 'Previous Git Hunk' })        -- 跳转到上一个 hunk
vim.keymap.set('n', '<leader>hs', ':Gitsigns stage_hunk<CR>',
	{ noremap = true, silent = true, desc = 'Stage Current Hunk' })                                                        -- 暂存当前 hunk
vim.keymap.set('n', '<leader>hr', ':Gitsigns reset_hunk<CR>',
	{ noremap = true, silent = true, desc = 'Reset Current Hunk' })                                                        -- 重置当前 hunk
vim.keymap.set('n', '<leader>hS', ':Gitsigns stage_buffer<CR>', { noremap = true, silent = true, desc = 'Stage Buffer' })  -- 暂存整个缓冲区
vim.keymap.set('n', '<leader>hu', ':Gitsigns undo_stage_hunk<CR>',
	{ noremap = true, silent = true, desc = 'Undo Stage Hunk' })                                                           -- 撤销暂存当前 hunk
vim.keymap.set('n', '<leader>hR', ':Gitsigns reset_buffer<CR>', { noremap = true, silent = true, desc = 'Reset Buffer' })  -- 重置整个缓冲区
vim.keymap.set('n', '<leader>hp', ':Gitsigns preview_hunk<CR>', { noremap = true, silent = true, desc = 'Preview Hunk' })  -- 预览当前 hunk
vim.keymap.set('n', '<leader>hb', ':Gitsigns blame_line<CR>', { noremap = true, silent = true, desc = 'Show Line Blame' }) -- 显示当前行的 blame 信息
vim.keymap.set('n', '<leader>tb', ':Gitsigns toggle_current_line_blame<CR>',
	{ noremap = true, silent = true, desc = 'Toggle Line Blame' })                                                         -- 切换当前行的 blame 信息
vim.keymap.set('n', '<leader>hd', ':Gitsigns diffthis<CR>', { noremap = true, silent = true, desc = 'Show File Diff' })    -- 显示当前文件的 diff
vim.keymap.set('n', '<leader>td', ':Gitsigns toggle_deleted<CR>',
	{ noremap = true, silent = true, desc = 'Toggle Deleted Lines' })                                                      -- 切换显示已删除的行
