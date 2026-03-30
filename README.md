[简体中文](README_CN.md)

# nvim-config

This is my Neovim configuration, using Lazy for plugin management

* Environment: MacOS + iTerm2

## Plugin List

| Plugin | Description |
| --- | --- |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | Color scheme |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File explorer |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration |
| [mason.nvim](https://github.com/mason-org/mason.nvim) | LSP server manager |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Auto completion |
| [copilot.lua](https://github.com/zbirenbaum/copilot.lua) | GitHub Copilot |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git integration |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Code commenting |
| [leap.nvim](https://codeberg.org/andyg/leap.nvim) | Quick motion |
| [mini.pairs](https://github.com/echasnovski/mini.pairs) | Auto pairs |

## Initialization Process

1. Install Nerd Font, recommended `JetBrainsMonoNerdFontMono-Regular`, after downloading and installation, switch terminal font
2. Clone the project and create a symlink to `/Users/{your user}/.config/nvim/`
3. Open `lua/config/lang.lua` in nvim config directory to configure development languages
4. Install `lsp-server` via `:Mason`
5. Install ripgrep for global search: `brew install ripgrep`
6. Install tree-sitter CLI for AST compilation support: `npm install -g tree-sitter-cli` (or via Homebrew: `brew install tree-sitter-cli`)
7. (Optional) Enable Copilot `:Copilot auth`

## Keybindings Reference

### Basic Operations
| Keybinding | Function |
| --- | --- |
| `,` | Leader key |
| `Y` | Yank from current position to end of line |
| `gb` | Go back to previous position (`<C-o>`) |
| `<leader>e` | Show diagnostic float window |

### Window & Tab Management
| Keybinding | Function |
| --- | --- |
| `<C-t>` | Open new tab |
| `<S-H>` | Switch to previous tab |
| `<S-L>` | Switch to next tab |
| `<C-h>` | Switch to left window |
| `<C-j>` | Switch to bottom window |
| `<C-k>` | Switch to top window |
| `<C-l>` | Switch to right window |

### Quick Motion (Leap)
| Keybinding | Function |
| --- | --- |
| `s` | Leap (quick jump in normal/visual/operator mode) |
| `S` | Leap from other windows |

### File Explorer (nvim-tree)
| Keybinding | Function |
| --- | --- |
| `<C-e>` | Toggle file tree |
| `,nf` | Locate current file in file tree |
| `<CR>` | Open file/directory |
| `h` | Close directory |
| `v` | Open file in vertical split |
| `s` | Open file in horizontal split |
| `t` | Open file in new tab |
| `a` | Create file/directory |
| `d` | Delete file/directory |
| `r` | Rename file/directory |
| `x` | Cut file/directory |
| `c` | Copy file/directory |
| `p` | Paste file/directory |
| `R` | Refresh file tree |
| `?` | Show help |

### Search (Telescope)
| Keybinding | Function |
| --- | --- |
| `<C-p>` | Find files |
| `<C-g>` | Global text search |
| `,fb` | Find buffer |
| `,fh` | Find help tags |
| `,fd` | Find diagnostics |

### Code Navigation (LSP)
| Keybinding | Function |
| --- | --- |
| `gd` | Go to definition |
| `,dt` | Open definition in new tab |
| `,dv` | Open definition in vertical split |
| `gr` | Find references |
| `gi` | Find implementations |
| `K` | Show hover documentation |
| `,rn` | Rename symbol |
| `,ca` | Code actions |
| `[d` | Go to previous diagnostic |
| `]d` | Go to next diagnostic |
| `,f` | Format code |

### Code Commenting (Comment)
| Keybinding | Function |
| --- | --- |
| `//` | Toggle line comment |
| `/b` | Toggle block comment |

### Git Operations (Gitsigns)
| Keybinding | Function |
| --- | --- |
| `]c` | Go to next hunk |
| `[c` | Go to previous hunk |
| `,hs` | Stage current hunk |
| `,hr` | Reset current hunk |
| `,hS` | Stage entire buffer |
| `,hu` | Undo stage current hunk |
| `,hR` | Reset entire buffer |
| `,hp` | Preview current hunk |
| `,hb` | Show blame info for current line |
| `,tb` | Toggle blame info for current line |
| `,hd` | Show diff for current file |
| `,td` | Toggle deleted lines |

### Code Completion
| Keybinding | Function |
| --- | --- |
| `<C-Space>` | Manual trigger completion |
| `<CR>` | Confirm completion item |
| `<Tab>` | Select next completion item |
| `<S-Tab>` | Select previous completion item |
