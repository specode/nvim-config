-- detail: https://github.com/yetone/avante.nvim/wiki/Custom-providers
return {
	provider = 'volcengine_deepseek_r1',
	mode = "agentic",
	vendors = {
		volcengine_deepseek_v3 = {
			__inherited_from = 'openai',
			endpoint = 'https://ark.cn-beijing.volces.com/api/v3',
			api_key_name = 'ARK_API_KEY',
			model = 'deepseek-v3-250324',
			max_tokens = 12288,
		},
		volcengine_deepseek_r1 = {
			__inherited_from = 'openai',
			endpoint = 'https://ark.cn-beijing.volces.com/api/v3',
			api_key_name = 'ARK_API_KEY',
			model = 'deepseek-r1-250120',
			max_tokens = 12288,
		},
		openrouter_claude = {
			__inherited_from = 'openai',
			endpoint = 'https://openrouter.ai/api/v1',
			api_key_name = 'OPENROUTER_API_KEY',
			model = 'anthropic/claude-3.7-sonnet',
		},
	}
}
