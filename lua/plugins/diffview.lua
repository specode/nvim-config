return {
	{
		"sindrets/diffview.nvim",
		cmd = {
			"DiffviewOpen",
			"DiffviewFileHistory",
			"DiffviewClose",
			"DiffviewToggleFiles",
			"DiffviewFocusFiles",
			"DiffviewRefresh",
		},
		keys = {
			{ "<leader>gd", "<cmd>DiffviewOpen<CR>", desc = "Git Diff View" },
			{ "<leader>gD", "<cmd>DiffviewOpen --staged<CR>", desc = "Git Staged Diff View" },
			{ "<leader>gh", "<cmd>DiffviewFileHistory %<CR>", desc = "Git File History" },
			{ "<leader>gH", "<cmd>DiffviewFileHistory<CR>", desc = "Git Repo History" },
			{ "<leader>gq", "<cmd>DiffviewClose<CR>", desc = "Close Git Diff View" },
		},
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
