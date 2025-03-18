-- detail: https://github.com/yetone/avante.nvim/wiki/Custom-providers
return {
	provider = 'volcengine_deepseek_v3',
	vendors = {
		volcengine_deepseek_v3 = {
			__inherited_from = 'openai',
			endpoint = 'https://ark.cn-beijing.volces.com/api/v3',
			api_key_name = 'ARK_API_KEY',
			model = 'deepseek-v3-241226',
			max_completion_tokens = 12288,
		},
		volcengine_deepseek_r1 = {
			__inherited_from = 'openai',
			endpoint = 'https://ark.cn-beijing.volces.com/api/v3',
			api_key_name = 'ARK_API_KEY',
			model = 'deepseek-r1-250120',
			max_completion_tokens = 12288,
		},
		openrouter_claude = {
			__inherited_from = 'openai',
			endpoint = 'https://openrouter.ai/api/v1',
			api_key_name = 'OPENROUTER_API_KEY',
			model = 'anthropic/claude-3.7-sonnet',
		},
		deepseek_coder = {
			__inherited_from = 'openai',
			api_key_name = 'DEEPSEEK_API_KEY',
			endpoint = 'https://api.deepseek.com',
			model = 'deepseek-coder',
		},
		ollama = {
			__inherited_from = 'openai',
			endpoint = 'http://127.0.0.1:11434/v1',
			api_key_name = '',
			model = 'codegemma',
		},
	}
}
