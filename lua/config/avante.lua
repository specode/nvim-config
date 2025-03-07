-- detail: https://github.com/yetone/avante.nvim/wiki/Custom-providers
return {
	provider = 'volcengine',
	vendors = {
		volcengine = {
			__inherited_from = 'openai',
			endpoint = 'https://ark.cn-beijing.volces.com/api/v3',
			api_key_name = 'ARK_API_KEY',
			model = 'deepseek-v3-241226',
			disable_tools = true,
		},
	},
	-- provider = 'ollama',
	-- vendors = {
	-- 	ollama = {
	-- 		__inherited_from = 'openai',
	-- 		endpoint = 'http://127.0.0.1:11434/v1',
	-- 		api_key_name = '',
	-- 		model = 'codegemma',
	-- 	},
	-- },
	-- provider = 'openrouter',
	-- vendors = {
	-- 	openrouter = {
	-- 		__inherited_from = 'openai',
	-- 		endpoint = 'https://openrouter.ai/api/v1',
	-- 		api_key_name = 'OPENROUTER_API_KEY',
	-- 		-- model = 'deepseek/deepseek-chat',
	-- 		model = 'anthropic/claude-3.7-sonnet',
	-- 	},
	-- },
	-- provider = 'deepseek',
	-- vendors = {
	-- 	deepseek = {
	-- 		__inherited_from = 'openai',
	-- 		api_key_name = 'DEEPSEEK_API_KEY',
	-- 		endpoint = 'https://api.deepseek.com',
	-- 		model = 'deepseek-coder',
	-- 	},
	-- },
}
