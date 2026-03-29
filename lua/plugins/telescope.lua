return {
	{
		'nvim-telescope/telescope.nvim',
		cmd = "Telescope",
		keys = {
			{ "<C-p>", function() require("telescope.builtin").find_files() end, desc = "Find Files" },
			{ "<C-g>", function() require("telescope.builtin").live_grep() end, desc = "Live Grep" },
			{ "<leader>fb", function() require("telescope.builtin").buffers() end, desc = "Find Buffers" },
			{ "<leader>fh", function() require("telescope.builtin").help_tags() end, desc = "Find Help" },
			{ "<leader>fd", function() require("telescope.builtin").diagnostics() end, desc = "Find Diagnostics" },
		},
		dependencies = { 'nvim-lua/plenary.nvim' },
	}
}
