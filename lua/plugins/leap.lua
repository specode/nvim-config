return {
	{
		"ggandor/leap.nvim",
		config = function()
			require("leap").add_default_mappings() -- 添加默认按键映射
		end
	}
}
