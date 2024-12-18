-- 设置 leader 键为 ','
vim.g.mapleader = ','

-- Y 当前位置复制整行
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true, silent = true })

-- ctrl + t 打开新窗口
vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew<CR>', { noremap = true, silent = true })

-- 通过 Shift + H/L 在标签页之间切换
vim.api.nvim_set_keymap('n', '<S-H>', 'gT', { noremap = true, silent = true })  -- Shift+H -> gT
vim.api.nvim_set_keymap('n', '<S-L>', 'gt', { noremap = true, silent = true })  -- Shift+L -> gt

-- 窗口导航
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w><Up>', { noremap = true, silent = true })  -- Ctrl+k -> <C-w><Up>
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w><Down>', { noremap = true, silent = true })  -- Ctrl+j -> <C-w><Down>
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w><Right>', { noremap = true, silent = true })  -- Ctrl+l -> <C-w><Right>
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w><Left>', { noremap = true, silent = true })  -- Ctrl+h -> <C-w><Left>

-- nvim-tree 配置
vim.api.nvim_set_keymap('n', '<C-e>', ':lua require("nvim-tree.api").tree.toggle()<CR>', { noremap = true, silent = true })
