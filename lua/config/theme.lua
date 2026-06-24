-- 配色主题管理：跟随【终端】背景色自动明暗，并支持手动切换（选择会被记住）
--
-- 原理：Neovim 0.10+ 启动时会通过 OSC 11 转义序列向终端查询背景色，据此设置
-- vim.o.background。本模块监听该值的变化来套用对应明/暗配色，因此跟随的是
-- 终端的实际配色，而不是 macOS 系统外观。
local M = {}

-- 记住用户选择的文件
M.state_path = vim.fn.stdpath("data") .. "/theme-choice.txt"

-- 主题注册表：label 为显示名，light/dark 为对应模式要应用的 colorscheme
M.themes = {
	{ label = "Catppuccin", light = "catppuccin-latte", dark = "catppuccin-mocha" },
	{ label = "Tokyonight", light = "tokyonight-day", dark = "tokyonight-storm" },
	{ label = "Rose Pine", light = "rose-pine-dawn", dark = "rose-pine-main" },
	{ label = "Kanagawa", light = "kanagawa-lotus", dark = "kanagawa-wave" },
	{ label = "Nightfox", light = "dayfox", dark = "nightfox" },
	{ label = "Gruvbox", light = "gruvbox", dark = "gruvbox" },
}

local function read_choice()
	local ok, lines = pcall(vim.fn.readfile, M.state_path)
	if ok and lines and lines[1] and lines[1] ~= "" then
		return lines[1]
	end
	return nil
end

local function write_choice(label)
	pcall(vim.fn.writefile, { label }, M.state_path)
end

-- 当前选中的主题（默认列表第一个）
function M.current()
	local label = M.selected or read_choice()
	for _, t in ipairs(M.themes) do
		if t.label == label then
			return t
		end
	end
	return M.themes[1]
end

-- 应用当前主题的明/暗变体；mode 省略时沿用当前 background（即终端检测结果）
function M.apply(mode)
	mode = mode or vim.o.background
	if mode ~= "light" and mode ~= "dark" then
		mode = "dark"
	end
	-- 只在确有变化时改 background，避免 OptionSet 递归触发
	if vim.o.background ~= mode then
		vim.o.background = mode
	end
	local t = M.current()
	local scheme = (mode == "light") and t.light or t.dark
	if vim.g.colors_name ~= scheme then
		pcall(vim.cmd.colorscheme, scheme)
	end
end

-- 切换到指定主题并记住
function M.set(label)
	M.selected = label
	write_choice(label)
	-- 强制重新应用（即便 background 没变也要换主题）
	vim.g.colors_name = nil
	M.apply()
end

-- 弹出选择器
function M.select()
	vim.ui.select(M.themes, {
		prompt = "选择配色主题",
		format_item = function(t)
			local mark = (t.label == M.current().label) and "● " or "  "
			return mark .. t.label
		end,
	}, function(choice)
		if choice then
			M.set(choice.label)
		end
	end)
end

-- 主动用 OSC 11 询问终端当前背景色；Neovim 收到回应后会更新 vim.o.background
local function requery_terminal_bg()
	pcall(function()
		io.stdout:write("\027]11;?\027\\")
		io.stdout:flush()
	end)
end

function M.setup()
	-- :Theme 命令和 <leader>ut 快捷键
	vim.api.nvim_create_user_command("Theme", function()
		M.select()
	end, { desc = "切换配色主题" })
	vim.keymap.set("n", "<leader>ut", function()
		M.select()
	end, { desc = "切换配色主题" })

	-- 终端背景变化（Neovim 检测到 OSC 11 回应后会改 background）时重新应用
	vim.api.nvim_create_autocmd("OptionSet", {
		pattern = "background",
		callback = function()
			M.apply()
		end,
	})

	-- 切回窗口 / 恢复时主动重新查询终端背景，实现实时跟随终端主题切换
	vim.api.nvim_create_autocmd({ "FocusGained", "VimResume" }, {
		callback = function()
			requery_terminal_bg()
			vim.defer_fn(function()
				M.apply()
			end, 120)
		end,
	})

	-- 启动时等原生终端检测落地后应用一次
	vim.defer_fn(function()
		M.apply()
	end, 120)
end

return M
