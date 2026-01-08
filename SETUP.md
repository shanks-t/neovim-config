# Neovim Setup Guide

Your Neovim configuration is ready! Here's how to get started.

## Installation Steps

### 1. Install Required Tools

```bash
# Install ruff (Python formatter - if not already installed)
uv tool install ruff

# Install gopls (Go language server)
go install golang.org/x/tools/gopls@latest

# Install goimports and gofumpt (Go formatters)
go install golang.org/x/tools/cmd/goimports@latest
go install mvdan.cc/gofumpt@latest
```

### 2. First Launch

Open Neovim:
```bash
nvim
```

On first launch, lazy.nvim will automatically:
- Clone itself
- Install all plugins
- This may take a minute or two

### 3. Install Language Servers

Once Neovim opens, Mason will automatically install:
- pyright (Python type checker, same as Pylance)
- gopls (Go language server)

You can check installation status with `:Mason`

## Key Features

### Auto Save
Files automatically save when you switch buffers or lose focus (VSCode-style)

### Format on Save
- Python files: formatted with ruff
- Go files: formatted with goimports and gofumpt
- Runs automatically on every save

### File Navigation (VSCode-style)

| Keybinding | Action |
|------------|--------|
| `Ctrl+p` or `<leader>ff` | Fuzzy find files |
| `<leader>fg` | Search text in project |
| `<leader>fb` | Find open buffers |
| `<leader>fr` | Recent files |
| `<leader>e` | Toggle file explorer |
| `Tab` | Next buffer/tab |
| `Shift+Tab` | Previous buffer/tab |
| `<leader>x` | Close current buffer |

### Window Navigation

| Keybinding | Action |
|------------|--------|
| `Ctrl+h/j/k/l` | Move between splits |

### LSP Features (Python & Go)

| Keybinding | Action |
|------------|--------|
| `gd` | Go to definition |
| `gr` | Find references |
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions |
| `<leader>d` | Show diagnostic |
| `[d` / `]d` | Previous/next diagnostic |

### Git Integration

| Keybinding | Action |
|------------|--------|
| `]c` / `[c` | Next/previous git hunk |
| `<leader>hp` | Preview hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hb` | Blame line |

### Manual Format

| Keybinding | Action |
|------------|--------|
| `<leader>fm` | Format file or selection |

### Other Useful Commands

| Keybinding | Action |
|------------|--------|
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| `Esc` | Clear search highlighting |

Note: `<leader>` is the spacebar by default

## Troubleshooting

### Plugins not loading?
Run `:Lazy sync` in Neovim

### LSP not working?
Check LSP status with `:LspInfo`

### Formatters not working?
Check conform status with `:ConformInfo`

## Customization

All configuration files are in `~/.config/nvim/lua/plugins/`
- Each plugin has its own file for easy modification
- Edit and restart Neovim to see changes

## Next Steps

1. Try opening a Python or Go file
2. Type some code and see LSP autocomplete
3. Save to see format-on-save in action
4. Press `<leader>` (spacebar) and wait to see available commands via which-key

Enjoy your new Neovim setup!
