return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup({
                on_attach = function(bufnr)
                    local api = require("nvim-tree.api")

                    -- 自定义快捷键
                    local function opts(desc)
                        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
                    end

					-- 默认快捷键
					api.config.mappings.default_on_attach(bufnr)

                    -- 禁用默认的 Ctrl+e 快捷键
                    vim.keymap.set('n', '<C-e>', '', { buffer = bufnr })

                    -- 映射 Ctrl+e 来关闭/切换 NvimTree
                    vim.keymap.set('n', '<C-e>', api.tree.toggle, opts("Toggle Tree"))
                end,
                -- 其他配置
                view = {
                    width = 30,
                },
            })
        end,
    },
}
