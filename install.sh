#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NVIM_CONFIG_DIR="$HOME/.config/nvim"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

info()  { echo -e "${GREEN}[+]${NC} $*"; }
warn()  { echo -e "${YELLOW}[!]${NC} $*"; }
error() { echo -e "${RED}[x]${NC} $*"; exit 1; }

check_cmd() { command -v "$1" &>/dev/null; }

# ── Prerequisites ──────────────────────────────────────────────────────────────

info "Checking prerequisites..."

check_cmd git  || error "git is required but not found"
check_cmd nvim || error "Neovim is required. Install via: brew install neovim"

NVIM_VERSION=$(nvim --version | head -1 | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')
NVIM_MAJOR=$(echo "$NVIM_VERSION" | cut -d. -f1)
NVIM_MINOR=$(echo "$NVIM_VERSION" | cut -d. -f2)
if [[ $NVIM_MAJOR -lt 1 && $NVIM_MINOR -lt 10 ]]; then
    error "Neovim >= 0.10 required (found $NVIM_VERSION)"
fi
info "Neovim $NVIM_VERSION — OK"

# ── Homebrew dependencies ──────────────────────────────────────────────────────

if check_cmd brew; then
    if ! check_cmd rg; then
        info "Installing ripgrep..."
        brew install ripgrep
    else
        info "ripgrep — already installed"
    fi

    if ! check_cmd tree-sitter; then
        info "Installing tree-sitter CLI..."
        brew install tree-sitter-cli
    else
        info "tree-sitter — already installed"
    fi
else
    warn "Homebrew not found — skipping ripgrep / tree-sitter installation"
    warn "Install manually:"
    warn "  ripgrep:    https://github.com/BurntSushi/ripgrep#installation"
    warn "  tree-sitter: npm install -g tree-sitter-cli"
fi

# ── Nerd Font reminder ─────────────────────────────────────────────────────────

warn "A Nerd Font is required for icons."
warn "Recommended: set up your terminal first with my dotfiles — https://github.com/specode/dotfiles"
warn "Or download any Nerd Font: https://www.nerdfonts.com/font-downloads, then set it in your terminal."

# ── Symlink config ─────────────────────────────────────────────────────────────

mkdir -p "$HOME/.config"

if [[ -e "$NVIM_CONFIG_DIR" || -L "$NVIM_CONFIG_DIR" ]]; then
    if [[ -L "$NVIM_CONFIG_DIR" && "$(readlink "$NVIM_CONFIG_DIR")" == "$REPO_DIR" ]]; then
        info "Symlink already points to this repo — skipping"
    else
        BACKUP="${NVIM_CONFIG_DIR}.bak.$(date +%Y%m%d_%H%M%S)"
        warn "Existing config found — backing up to $BACKUP"
        mv "$NVIM_CONFIG_DIR" "$BACKUP"
        ln -s "$REPO_DIR" "$NVIM_CONFIG_DIR"
        info "Symlink created: $NVIM_CONFIG_DIR -> $REPO_DIR"
    fi
else
    ln -s "$REPO_DIR" "$NVIM_CONFIG_DIR"
    info "Symlink created: $NVIM_CONFIG_DIR -> $REPO_DIR"
fi

# ── Bootstrap plugins ──────────────────────────────────────────────────────────

info "Bootstrapping lazy.nvim and installing plugins (headless)..."
nvim --headless "+Lazy! sync" +qa 2>&1 | tail -5 || true
info "Plugin installation complete"

# ── Done ───────────────────────────────────────────────────────────────────────

echo ""
info "Installation complete!"
echo ""
echo "  Next steps:"
echo "  1. Make sure your terminal uses a Nerd Font (recommended: set up via https://github.com/specode/dotfiles)"
echo "  2. Edit $REPO_DIR/lua/config/lang.lua to adjust LSP servers / parsers"
echo "  3. Open nvim and run :Mason to install LSP servers"
echo ""
