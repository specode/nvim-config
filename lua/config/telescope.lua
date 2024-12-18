local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.find_files, { noremap = true, silent = true, desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { noremap = true, silent = true, desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { noremap = true, silent = true, desc = "Find Buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { noremap = true, silent = true, desc = "Find Help" })
