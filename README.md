[简体中文](README_CN.md)

# nvim-config

This is my Neovim configuration, using Lazy for plugin management

* Environment: MacOS + iTerm2

## Initialization Process

1. Install Nerd Font, recommended `JetBrainsMonoNerdFontMono-Regular`, after downloading and installation, switch terminal font
2. Clone the project and create a symlink to `/Users/{your user}/.config/nvim/`
3. Open `lua/config/lang.lua` in nvim config directory to configure development languages
4. Install `lsp-server` via `:Mason`
5. Install ripgrep for global search: `brew install ripgrep`
6. (Optional) Enable Copilot `:Copilot auth`
7. (Optional) Enable Avante by modifying `provider` configuration in `lua/config/avante.lua`, and update API Key in environment variables: `export OPENAI_API_KEY=xxx`

## Keybindings Reference

### Basic Operations
| Keybinding | Function |
| --- | --- |
| `,` | Leader key |
| `Y` | Yank from current position to end of line |
| `gb` | Go back to previous position (`<C-o>`) |

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

### File Explorer (nvim-tree)
| Keybinding | Function |
| --- | --- |
| `<C-e>` | Toggle file tree |
| `,nf` | Locate current file in file tree |
| `<CR>` | Open file/directory |
| `h` | Close directory |
| `v` | Open file in vertical split |
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
