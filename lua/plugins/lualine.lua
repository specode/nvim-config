return {
    {
        'nvim-lualine/lualine.nvim',
        version = "*",
        config = function()
            require('lualine').setup()
        end
    }
}