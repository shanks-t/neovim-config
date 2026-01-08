# Neovim Configuration

Modern Neovim setup optimized for Python and Go development with LSP, fuzzy finding, and git integration.

## 🔌 Plugins

### Core Infrastructure
- **[lazy.nvim](https://github.com/folke/lazy.nvim)** - Fast plugin manager
- **[plenary.nvim](https://github.com/nvim-lua/plenary.nvim)** - Utility functions for Neovim plugins

### LSP & Language Support
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** - Package manager for LSP servers, formatters, and linters
- **[mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)** - Bridges mason with native Neovim LSP
- **[venv-lsp.nvim](https://github.com/jglasovic/venv-lsp.nvim)** - Automatic Python virtual environment detection for LSP (zero-config for Neovim 0.11+)
- **Configured Language Servers:**
  - `pyright` - Python language server with type checking
  - `gopls` - Official Go language server

### Completion & Snippets
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Autocompletion engine
- **[cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)** - LSP completion source
- **[cmp-buffer](https://github.com/hrsh7th/cmp-buffer)** - Buffer word completion
- **[cmp-path](https://github.com/hrsh7th/cmp-path)** - File path completion
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** - Snippet engine
- **[cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)** - Snippet completion source

### Fuzzy Finding & Search
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder for files, strings, buffers, and more
  - Dropdown theme for cleaner UI
  - Custom keybindings for common operations

### Syntax & Parsing
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Modern syntax highlighting and code understanding
  - Configured for: Python, Lua, Markdown, JSON, YAML

### Git Integration
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** - Git decorations and hunk operations
  - Shows added/modified/deleted lines in gutter
  - Navigate between hunks
  - Stage/reset individual hunks
  - Inline blame

### File Management
- **[neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)** - File explorer with tree view
  - Auto-follows current file
  - Integrates with git status

### UI Enhancements
- **[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)** - Tab-like buffer list at top
  - Shows LSP diagnostics
  - Offsets for neo-tree
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** - Statusline with useful information
  - Git branch, file info, LSP status
- **[which-key.nvim](https://github.com/folke/which-key.nvim)** - Shows available keybindings in popup
  - Press `<leader>` and wait to see options

### Colorscheme
- **[catppuccin](https://github.com/catppuccin/nvim)** - Mocha variant (dark theme)

### Code Formatting
- **[conform.nvim](https://github.com/stevearc/conform.nvim)** - Format on save
  - Python: `black` formatter
  - Go: `gofumpt` formatter

---

## ⌨️ Keybindings

**Leader Key:** `Space`

### Core Operations

| Keybinding | Mode | Action |
|------------|------|--------|
| `<leader>w` | Normal | Save file |
| `<leader>q` | Normal | Quit |
| `<leader>x` | Normal | Close current buffer |
| `Tab` | Normal | Next buffer |
| `Shift+Tab` | Normal | Previous buffer |
| `Esc` | Normal | Clear search highlighting |

### File Navigation

| Keybinding | Mode | Action |
|------------|------|--------|
| `Ctrl+p` or `<leader>ff` | Normal | Fuzzy find files |
| `<leader>fg` | Normal | Live grep (search in files) |
| `<leader>fb` | Normal | Find buffers |
| `<leader>fr` | Normal | Recent files |
| `<leader>e` | Normal | Toggle file explorer (Neo-tree) |
| `<leader>o` | Normal | Focus file explorer |

### File & Directory Creation

| Keybinding | Mode | Action |
|------------|------|--------|
| `<leader>nf` | Normal | New file in current directory |
| `<leader>nd` | Normal | New directory (mkdir) |

### LSP (Code Intelligence)

| Keybinding | Mode | Action |
|------------|------|--------|
| `gd` | Normal | Go to definition |
| `gD` | Normal | Go to declaration |
| `gr` | Normal | Go to references (shows all usages) |
| `gi` | Normal | Go to implementation |
| `K` | Normal | Show hover documentation |
| `K` (twice) | Normal | Enter hover documentation window |
| `Ctrl+k` | Normal | Show signature help |
| `<leader>rn` | Normal | Rename symbol (LSP rename) |
| `<leader>ca` | Normal | Code actions (quick fixes) |
| `<leader>d` | Normal | Show diagnostic (error details) |
| `]d` | Normal | Next diagnostic (error) |
| `[d` | Normal | Previous diagnostic (error) |

### Find & Replace

| Keybinding | Mode | Action |
|------------|------|--------|
| `<leader>s` | Normal | Replace word under cursor in file |
| `<leader>s` | Visual | Replace selected text in file |

**How to use:**
1. Put cursor on a word (or select text in visual mode)
2. Press `<leader>s`
3. Type the replacement text
4. Press Enter to confirm (or Esc to cancel)

### Git Operations

| Keybinding | Mode | Action |
|------------|------|--------|
| `]c` | Normal | Next git hunk (change) |
| `[c` | Normal | Previous git hunk |
| `<leader>hp` | Normal | Preview git hunk (show diff) |
| `<leader>hs` | Normal | Stage git hunk |
| `<leader>hr` | Normal | Reset git hunk (undo change) |
| `<leader>hb` | Normal | Show git blame for line |

### Window Management

| Keybinding | Mode | Action |
|------------|------|--------|
| `:vsp` | Command | Vertical split |
| `:sp` | Command | Horizontal split |
| `Ctrl+h` | Normal | Move to left window |
| `Ctrl+j` | Normal | Move to window below |
| `Ctrl+k` | Normal | Move to window above |
| `Ctrl+l` | Normal | Move to right window |

### Editing & Motions

| Keybinding | Mode | Action |
|------------|------|--------|
| `<` | Visual | Indent left (stays in visual mode) |
| `>` | Visual | Indent right (stays in visual mode) |
| `jj` | Insert | Exit insert mode (alternative to Esc) |

### Telescope (Fuzzy Finder) Navigation

When Telescope is open:

| Keybinding | Action |
|------------|--------|
| `Ctrl+j` | Move to next result |
| `Ctrl+k` | Move to previous result |
| `Enter` | Select result |
| `Esc` | Close telescope |

### Completion Menu

When completion menu is open:

| Keybinding | Action |
|------------|--------|
| `Ctrl+Space` | Trigger completion |
| `Tab` | Next item / expand snippet |
| `Shift+Tab` | Previous item |
| `Enter` | Confirm selection |
| `Ctrl+e` | Abort completion |

---

## 🎯 LSP Features

### Automatic Virtual Environment Detection

The config uses **venv-lsp.nvim** for automatic Python venv detection:

- Automatically detects `.venv`, `venv`, `.env`, `env` folders
- Supports Poetry and Pyenv
- Works per-project and in monorepos
- Zero configuration needed!

**Supported project structures:**
```
project/
├── .venv/           ← Auto-detected
└── pyproject.toml

project/
├── venv/            ← Auto-detected
└── requirements.txt
```

### Language Servers Configured

**Python (pyright):**
- Type checking: Basic mode
- Auto-imports
- Library code type stubs
- Diagnostic: Missing imports, type errors

**Go (gopls):**
- Static analysis
- Code formatting with gofumpt
- Unused parameter detection

---

## 📁 File Structure

```
~/.config/nvim/
├── init.lua                    # Main config + global keybindings
├── README.md                   # This file
├── lua/
│   ├── config/
│   │   └── lazy.lua           # Plugin manager setup
│   └── plugins/
│       ├── colorscheme.lua    # Catppuccin theme
│       ├── completion.lua     # nvim-cmp + snippets
│       ├── formatting.lua     # conform.nvim (black, gofumpt)
│       ├── git.lua            # gitsigns
│       ├── lsp.lua            # LSP configuration
│       ├── python-venv.lua    # venv-lsp.nvim
│       ├── telescope.lua      # Fuzzy finder
│       ├── treesitter.lua     # Syntax highlighting
│       └── ui.lua             # neo-tree, bufferline, lualine, which-key
```

---

## 🚀 Quick Start

### First Time Setup

1. Open Neovim:
   ```bash
   nvim
   ```

2. Lazy.nvim will auto-install plugins on first launch

3. Install language servers:
   ```vim
   :Mason
   ```

   Ensure `pyright` and `gopls` are installed (should auto-install)

4. Restart Neovim

### Daily Workflow

**Opening a project:**
```bash
cd your-project
nvim
```

**Finding files:** `Ctrl+p` → type filename → Enter

**Searching code:** `<leader>fg` → type search term

**Navigate code:** Put cursor on function → `gd` (go to definition)

**See documentation:** Put cursor on symbol → `K`

**Rename variable:** Put cursor on variable → `<leader>rn` → type new name

---

## 🔧 Configuration Details

### LSP Settings

**Root directory detection** (in order of priority):
1. `pyrightconfig.json` (if exists)
2. `pyproject.toml`
3. `setup.py`
4. `requirements.txt`
5. `.git` directory

**Diagnostics:**
- Virtual text enabled (inline errors)
- Signs in gutter (✘ for errors, ▲ for warnings)
- Severity sorting enabled
- Floating window with rounded borders

### Formatting

**Format on save enabled for:**
- Python files (using `black`)
- Go files (using `gofumpt`)

To disable format on save, comment out the format on save autocommand in `lua/plugins/formatting.lua`

---

## 💡 Pro Tips

1. **Press `<leader>` and wait** - which-key will show available commands
2. **Use `Ctrl+o` to jump back** after `gd` (go to definition)
3. **Use `*` to highlight word** then `<leader>fg` to search everywhere
4. **Press `K` twice** to enter hover docs and scroll
5. **Use `:LspInfo`** to debug LSP issues
6. **Check venv detection:** `:lua print(vim.b.venv_lsp_venv)`

---

## 🐛 Troubleshooting

### LSP not working for Python

1. Check LSP status: `:LspInfo`
2. Check venv detection: `:lua print(vim.b.venv_lsp_venv)`
3. Restart LSP: `:LspRestart`
4. Check logs: `:lua vim.cmd('edit ' .. vim.lsp.get_log_path())`

### Imports show "could not be resolved"

- Ensure virtual environment exists: `ls .venv`
- Ensure packages installed: `.venv/bin/python -c "import package_name"`
- Restart Neovim after creating new venv

### Telescope not finding files

- Check you're in correct directory: `:lua print(vim.fn.getcwd())`
- Change directory: `:cd /path/to/project`

---

## 📚 Learning Resources

- **Vim motions:** `:help motion.txt`
- **LSP commands:** `:help lsp`
- **Telescope:** `:help telescope`
- **Treesitter:** `:help treesitter`

---

## 🎨 Customization

### Change Theme

Edit `lua/plugins/colorscheme.lua`:
```lua
require("catppuccin").setup({
  flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
})
```

### Add More Language Servers

1. Open Mason: `:Mason`
2. Search for language server
3. Press `i` to install
4. Add config in `lua/plugins/lsp.lua`

### Change Leader Key

Edit `init.lua`:
```lua
vim.g.mapleader = ' ' -- Change to your preferred key
```

---

## 🔄 Syncing to Work Machine

After pulling this config to a new machine:

1. Open Neovim (plugins auto-install)
2. Run `:Mason` and verify pyright/gopls installed
3. Restart Neovim
4. Open a Python/Go file to trigger LSP

---

## ⚡ Performance

- **Lazy loading:** Plugins load on-demand
- **LSP caching:** venv-lsp caches detected environments
- **Treesitter:** Incremental parsing for fast syntax highlighting

---

**Config Version:** Neovim 0.11+
**Last Updated:** 2026-01-08
**Maintained by:** Trey Shanks
