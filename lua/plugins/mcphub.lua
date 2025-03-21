return {
	{
		"ravitemer/mcphub.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim", -- Required for Job and HTTP requests
		},
		-- cmd = "MCPHub", -- lazily start the hub when `MCPHub` is called
		build = "npm install -g mcp-hub@latest", -- Installs required mcp-hub npm module
		config = function()
			require("config.mcphub").setup()
		end
	}
}
