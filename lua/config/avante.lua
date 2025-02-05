return {
	provider = "openai",
	-- deepseek
	-- openai = {
	-- 	endpoint = "https://api.deepseek.com",
	-- 	model = "deepseek-chat",
	-- 	timeout = 30000, -- 超时时间，单位为毫秒
	-- 	temperature = 0,
	-- 	max_tokens = 4096,
	-- }

	-- openrouter
	openai = {
		endpoint = "https://openrouter.ai/api/v1",
		-- model = "deepseek/deepseek-chat",
		model = "deepseek/deepseek-r1",
		timeout = 30000, -- 超时时间，单位为毫秒
		temperature = 0,
		max_tokens = 4096,
	}
}
