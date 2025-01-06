-- 需要安装的语言列表
local M = {}

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
-- 具体语言的 LSP 配置在 config/lsp.lua
M.lsp_servers = { "lua_ls", "pyright", "gopls", "intelephense", "eslint", "jsonls",
	"docker_compose_language_service", "dockerls", "volar", "ts_ls" }

-- https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
-- M.treesitter_parsers = { "go", "php", "lua", "python", "javascript", "typescript", "html", "css" }
M.treesitter_parsers = "all"

return M
