# nvim-config

这是我的 Neovim 配置，使用 Lazy 用于插件管理

* 使用环境是 MacOS + iTerm2

## 插件列表

| 插件 | 说明 |
| --- | --- |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | 主题配色 |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | 文件浏览器 |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | 模糊查找 |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP 配置 |
| [mason.nvim](https://github.com/mason-org/mason.nvim) | LSP 服务器管理 |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | 自动补全 |
| [copilot.lua](https://github.com/zbirenbaum/copilot.lua) | GitHub Copilot |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | 语法高亮 |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | 状态栏 |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git 集成 |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | 代码注释 |
| [leap.nvim](https://codeberg.org/andyg/leap.nvim) | 快速跳转 |
| [mini.pairs](https://github.com/echasnovski/mini.pairs) | 自动括号配对 |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | Markdown Buffer 内渲染 |

## 初始化流程

1. 安装 Nerd 字体，推荐 `JetBrainsMonoNerdFontMono-Regular`，下载安装后，终端字体切换
2. 下载项目，并建立软链接到 `/Users/{your user}/.config/nvim/`
3. 打开 nvim 配置目录下的 `lua/config/lang.lua` 配置开发语言
4. 通过 `:Mason` 安装 `lsp-server`
5. 安装 ripgrep 用于全局搜索：`brew install ripgrep`
6. 安装 tree-sitter CLI 用于部分语言的语法树编译支持：`npm install -g tree-sitter-cli`（或者使用 Homebrew：`brew install tree-sitter-cli`）
7. （可选）启用 Copilot `:Copilot auth`

## 快捷键说明

### 基础操作
| 快捷键 | 功能 |
| --- | --- |
| `,` | Leader 键 |
| `Y` | 从当前位置复制到行尾 |
| `gb` | 跳回上一个位置 (`<C-o>`) |
| `<leader>e` | 显示诊断浮窗 |

### 窗口与标签页
| 快捷键 | 功能 |
| --- | --- |
| `<C-t>` | 打开新标签页 |
| `<S-H>` | 切换到上一个标签页 |
| `<S-L>` | 切换到下一个标签页 |
| `<C-h>` | 切换到左侧窗口 |
| `<C-j>` | 切换到下方窗口 |
| `<C-k>` | 切换到上方窗口 |
| `<C-l>` | 切换到右侧窗口 |

### 快速跳转 (Leap)
| 快捷键 | 功能 |
| --- | --- |
| `s` | Leap 跳转（普通/可视/操作模式） |
| `S` | 从其他窗口 Leap 跳转 |

### 文件浏览 (nvim-tree)
| 快捷键 | 功能 |
| --- | --- |
| `<C-e>` | 切换文件树 |
| `,nf` | 在文件树中定位当前文件 |
| `<CR>` | 打开文件/目录 |
| `h` | 关闭目录 |
| `v` | 垂直分割打开文件 |
| `s` | 水平分割打开文件 |
| `t` | 在新标签页中打开文件 |
| `a` | 创建文件/目录 |
| `d` | 删除文件/目录 |
| `r` | 重命名文件/目录 |
| `x` | 剪切文件/目录 |
| `c` | 复制文件/目录 |
| `p` | 粘贴文件/目录 |
| `R` | 刷新文件树 |
| `?` | 显示帮助 |

### 搜索 (Telescope)
| 快捷键 | 功能 |
| --- | --- |
| `<C-p>` | 查找文件 |
| `<C-g>` | 全局搜索文本 |
| `,fb` | 查找缓冲区 |
| `,fh` | 查找帮助标签 |
| `,fd` | 查找诊断信息 |

### 代码导航 (LSP)
| 快捷键 | 功能 |
| --- | --- |
| `gd` | 跳转到定义 |
| `,dt` | 在新标签页中打开定义 |
| `,dv` | 在垂直分割窗口中打开定义 |
| `gr` | 查找引用 |
| `gi` | 查找实现 |
| `K` | 显示悬浮文档 |
| `,rn` | 重命名符号 |
| `,ca` | 代码操作 |
| `[d` | 跳转到上一个诊断 |
| `]d` | 跳转到下一个诊断 |
| `,f` | 格式化代码 |

### 代码注释 (Comment)
| 快捷键 | 功能 |
| --- | --- |
| `//` | 切换行注释 |
| `/b` | 切换块注释 |

### Git 操作 (Gitsigns)
| 快捷键 | 功能 |
| --- | --- |
| `]c` | 跳转到下一个 hunk |
| `[c` | 跳转到上一个 hunk |
| `,hs` | 暂存当前 hunk |
| `,hr` | 重置当前 hunk |
| `,hS` | 暂存整个缓冲区 |
| `,hu` | 撤销暂存当前 hunk |
| `,hR` | 重置整个缓冲区 |
| `,hp` | 预览当前 hunk |
| `,hb` | 显示当前行的 blame 信息 |
| `,tb` | 切换当前行的 blame 信息 |
| `,hd` | 显示当前文件的 diff |
| `,td` | 切换显示已删除的行 |

### 代码补全
| 快捷键 | 功能 |
| --- | --- |
| `<C-Space>` | 手动触发补全 |
| `<CR>` | 确认补全项 |
| `<Tab>` | 选择下一个补全项 |
| `<S-Tab>` | 选择上一个补全项 |
