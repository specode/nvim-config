return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "echasnovski/mini.icons",
  },
  ft = { "markdown" },
  opts = {
    -- 标题使用不同颜色和图标
    heading = {
      enabled = true,
      sign = true,
      icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
    },
    -- 代码块
    code = {
      enabled = true,
      sign = true,
      style = "full",   -- full / normal / language / none
      border = "thin",  -- thin / thick / none
    },
    -- 复选框
    checkbox = {
      enabled = true,
      unchecked = { icon = "󰄱 " },
      checked   = { icon = "󰱒 " },
    },
    -- 列表符号
    bullet = {
      enabled = true,
      icons = { "●", "○", "◆", "◇" },
    },
    -- 表格
    pipe_table = {
      enabled = true,
      style = "full",  -- full / normal / none
    },
    -- 行内代码
    inline_code = {
      enabled = true,
    },
    -- 水平分割线
    dash = {
      enabled = true,
      icon = "─",
    },
  },
}
