-- detail: https://github.com/yetone/avante.nvim/wiki/Custom-providers
return {
	mode = "agentic",
	provider = 'deepseek',
	providers = {
		aihubmix_gpto4mini = {
			__inherited_from = 'openai',
			endpoint = 'https://aihubmix.com/v1',
			api_key_name = 'AIHUBMIX_API_KEY',
			model = 'o4-mini',
		},
		deepseek = {
			__inherited_from = 'openai',
			endpoint = 'https://api.deepseek.com/v1',
			api_key_name = 'DEEPSEEK_API_KEY',
			model = 'deepseek-reasoner',
			extra_request_body = {
				max_tokens = 8192,
			},
		},
	},
}
