-- detail: https://github.com/yetone/avante.nvim/wiki/Custom-providers
return {
	mode = "agentic",
	provider = 'aihubmix_gpto4mini',
	providers = {
		aihubmix_gpto4mini = {
			__inherited_from = 'openai',
			endpoint = 'https://aihubmix.com/v1',
			api_key_name = 'AIHUBMIX_API_KEY',
			model = 'o4-mini',
		},
		volcengine_deepseek_v3 = {
			__inherited_from = 'openai',
			endpoint = 'https://ark.cn-beijing.volces.com/api/v3',
			api_key_name = 'ARK_API_KEY',
			model = 'deepseek-v3-250324',
			extra_request_body = {
				max_tokens = 12288,
			},
		},
		volcengine_deepseek_r1 = {
			__inherited_from = 'openai',
			endpoint = 'https://ark.cn-beijing.volces.com/api/v3',
			api_key_name = 'ARK_API_KEY',
			model = 'deepseek-r1-250120',
			extra_request_body = {
				max_tokens = 12288,
			},
		},
	},
}
