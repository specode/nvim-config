-- 设置 leader 键为 ','
vim.g.mapleader = ','

-- Y 当前位置复制整行
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true, silent = true })

-- ctrl + t 打开新窗口
vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew<CR>', { noremap = true, silent = true })

-- 通过 Shift + H/L 在标签页之间切换
vim.api.nvim_set_keymap('n', '<S-H>', 'gT', { noremap = true, silent = true }) -- Shift+H -> gT
vim.api.nvim_set_keymap('n', '<S-L>', 'gt', { noremap = true, silent = true }) -- Shift+L -> gt

-- 窗口导航
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w><Up>', { noremap = true, silent = true })    -- Ctrl+k -> <C-w><Up>
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w><Down>', { noremap = true, silent = true })  -- Ctrl+j -> <C-w><Down>
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w><Right>', { noremap = true, silent = true }) -- Ctrl+l -> <C-w><Right>
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w><Left>', { noremap = true, silent = true })  -- Ctrl+h -> <C-w><Left>

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

-- gitsigns 配置
vim.api.nvim_set_keymap('n', ']c', ':Gitsigns next_hunk<CR>', { noremap = true, silent = true })                         -- 跳转到下一个 hunk
vim.api.nvim_set_keymap('n', '[c', ':Gitsigns prev_hunk<CR>', { noremap = true, silent = true })                         -- 跳转到上一个 hunk
vim.api.nvim_set_keymap('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', { noremap = true, silent = true })                -- 暂存当前 hunk
vim.api.nvim_set_keymap('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', { noremap = true, silent = true })                -- 重置当前 hunk
vim.api.nvim_set_keymap('n', '<leader>hS', ':Gitsigns stage_buffer<CR>', { noremap = true, silent = true })              -- 暂存整个缓冲区
vim.api.nvim_set_keymap('n', '<leader>hu', ':Gitsigns undo_stage_hunk<CR>', { noremap = true, silent = true })           -- 撤销暂存当前 hunk
vim.api.nvim_set_keymap('n', '<leader>hR', ':Gitsigns reset_buffer<CR>', { noremap = true, silent = true })              -- 重置整个缓冲区
vim.api.nvim_set_keymap('n', '<leader>hp', ':Gitsigns preview_hunk<CR>', { noremap = true, silent = true })              -- 预览当前 hunk
vim.api.nvim_set_keymap('n', '<leader>hb', ':Gitsigns blame_line<CR>', { noremap = true, silent = true })                -- 显示当前行的 blame 信息
vim.api.nvim_set_keymap('n', '<leader>tb', ':Gitsigns toggle_current_line_blame<CR>', { noremap = true, silent = true }) -- 切换当前行的 blame 信息
vim.api.nvim_set_keymap('n', '<leader>hd', ':Gitsigns diffthis<CR>', { noremap = true, silent = true })                  -- 显示当前文件的 diff
vim.api.nvim_set_keymap('n', '<leader>td', ':Gitsigns toggle_deleted<CR>', { noremap = true, silent = true })            -- 切换显示已删除的行
