local M = {}

M.setup = function()
	require('Comment').setup({
		---LHS of toggle mappings in NORMAL mode
		toggler = {
			---Line-comment toggle keymap
			line = '//',
			---Block-comment toggle keymap
			block = '/b',
		},
		---LHS of operator-pending mappings in NORMAL and VISUAL mode
		opleader = {
			---Line-comment keymap
			line = '//',
			---Block-comment keymap
			block = '/b',
		},
		mappings = {
			---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
			basic = true,
			---Extra mapping; `gco`, `gcO`, `gcA`
			extra = false,
		},
	})
end

return M
