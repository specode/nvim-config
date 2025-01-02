return {
	provider = "openai",
	openai = {
		endpoint = "https://api.deepseek.com",
		model = "deepseek-chat",
		timeout = 30000, -- 超时时间，单位为毫秒
		temperature = 0,
		max_tokens = 4096,
	}
}
