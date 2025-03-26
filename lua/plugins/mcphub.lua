return {
	{
		"ravitemer/mcphub.nvim",
		enabled = false, -- 添加此选项禁用插件
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- cmd = "MCPHub",
		build = "npm install -g mcp-hub@latest",
		config = function()
			require("config.mcphub").setup()
		end
	}
}
