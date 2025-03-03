# nvim-config

这是我的 Neovim 配置，使用 Lazy 用于插件管理

* 使用环境是 MacOS + iTerm2 

## 初始化流程

1. 安装 Nerd 字体，推荐 `JetBrainsMonoNerdFontMono-Regular`，下载安装后，终端字体切换
2. 下载项目，并建立软链接到 `/Users/{your user}/.config/nvim/` 
3. 打开 nvim 配置目录下的 `lua/config/lang.lua` 配置开发语言
4. 通过 `:Mason` 安装 `lsp-server`
5. 安装 ripgrep 用于全局搜索：`brew install ripgrep`
6. （可选）启用 Copilot `:Copilot auth`
7. （可选）启用 Avante `lua/config/avante.lua` 修改其 `provider` 相关配置，并再环境变量中更新 API Key， `export OPENAI_API_KEY=xxx`

## 快捷键说明

见 `lua/config/keymaps.lua`
