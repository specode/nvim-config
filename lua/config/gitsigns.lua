local M = {}

M.setup = function()
    require("gitsigns").setup({
        signs = {
            add = { text = "+" },
            change = { text = "~" },
            delete = { text = "_" },
            topdelete = { text = "‾" },
            changedelete = { text = "~" },
        },
        current_line_blame = true, -- 显示当前行的 git blame 信息
    })
end

return M
