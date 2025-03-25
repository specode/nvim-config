return {
	{
		"olimorris/codecompanion.nvim",
		config = function()
			require("codecompanion").setup({
				strategies = {
					chat = {
						adapter = "ark",
						tools = {
							["mcp"] = {
								-- calling it in a function would prevent mcphub from being loaded before it's needed
								callback = function() return require("mcphub.extensions.codecompanion") end,
								description = "Call tools and resources from the MCP Servers",
								opts = {
									requires_approval = false,
								}
							}
						},
					},
					inline = {
						adapter = "ark",
					},
				},
				adapters = {
					ark = function()
						return require("codecompanion.adapters").extend("openai_compatible", {
							schema = {
								model = {
									default = "deepseek-v3-241226",
								},
							},
							env = {
								url = "https://ark.cn-beijing.volces.com/api/v3",
								chat_url = "/chat/completions", -- optional: default value, override if different
								models_endpoint = "/models", -- optional: attaches to the end of the URL to form the endpoint to retrieve models
								api_key = "cmd: echo $ARK_API_KEY"
							},
						})
					end,
				},
			})
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"ravitemer/mcphub.nvim",
		},

	},
}
