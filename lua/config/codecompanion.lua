local M = {}

M.setup = function()
	require('codecompanion').setup({
		opts = {
			language = "Chinese"
		},
		extensions = {
			mcphub = {
				callback = "mcphub.extensions.codecompanion",
				opts = {
					make_vars = true,
					make_slash_commands = true,
					show_result_in_chat = true
				}
			}
		},
		strategies = {
			chat = {
				adapter = "deepseek_r1",
			},
			inline = {
				adapter = "deepseek_r1",
			},
			cmd = {
				adapter = "deepseek_r1",
			}
		},
		adapters = {
			deepseek_r1 = function()
				return require("codecompanion.adapters").extend("openai_compatible", {
					env = {
						url = 'https://ark.cn-beijing.volces.com/api/v3',
						api_key = "cmd:op read op://Private/ARK_API_KEY/credential --no-newline",
						chat_url = "/chat/completions",
						model_url = "/models",
					},
					schema = {
						model = {
							default = "deepseek-r1-250120", -- define llm model to be used
						},
					}
				})
			end,
		},
	})
end

return M
