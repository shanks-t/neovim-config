# Unified Keybinding Strategy: Neovim ↔ VSCode

This document maintains a unified keybinding strategy across Neovim and VSCode. The philosophy is:

1. **Neovim is the source of truth** - Design keybindings for Neovim based on community standards
2. **VSCode syncs to Neovim** - Update VSCode settings to match where practical
3. **Document exceptions** - Note where they differ and why

---

## Core Philosophy

- **Leader key**: `<Space>` (both editors)
- **System clipboard**: Enabled (both editors)
- **Case-insensitive search**: With smart case (both editors)
- **No highlight on search**: Clean visual experience (both editors)

---

## Keybinding Comparison

### File Operations

| Action | Neovim | VSCode | Status |
|--------|--------|--------|--------|
| Save file | `<leader>w` | `<leader>w` | ✅ Synced |
| Quit/Close editor | `<leader>q` | `<leader>q` | ✅ Synced |
| Close all editors | ❌ Missing | `<leader>Q` | 🔧 Add to Nvim |
| Close buffer | `<leader>x` | N/A | ℹ️ Nvim only |
| New file | `<leader>nf` | N/A | ℹ️ Nvim only |

### Fuzzy Finding & Search

| Action | Neovim | VSCode | Status |
|--------|--------|--------|--------|
| Find files | `<leader>ff` or `Ctrl+p` | `<leader>ff` or `Ctrl+p` | ✅ Synced |
| Live grep | `<leader>fg` | `<leader>fg` | ✅ Synced |
| Recent files | `<leader>fr` | `<leader>fr` | ✅ Synced |
| Find buffers | `<leader>fb` | N/A | ℹ️ Nvim only |
| Find symbols | ❌ Missing | `<leader>fs` | 🔧 Add to Nvim |
| Help tags | `<leader>fh` | N/A | ℹ️ Nvim only |

### Window & Split Management

| Action | Neovim | VSCode | Status |
|--------|--------|--------|--------|
| Navigate left | `Ctrl+h` | `Ctrl+h` | ✅ Synced |
| Navigate right | `Ctrl+l` | `Ctrl+l` | ✅ Synced |
| Navigate down | `Ctrl+j` | ⚠️ Conflicts | ⚠️ VSCode uses for terminal |
| Navigate up | `Ctrl+k` | ⚠️ Conflicts | ⚠️ VSCode uses for focus editor |
| Vertical split | ❌ Missing | `<leader>v` | 🔧 Add to Nvim |
| Horizontal split | ❌ Missing | N/A | 🔧 Add to Nvim |

### Buffer/Tab Navigation

| Action | Neovim | VSCode | Status |
|--------|--------|--------|--------|
| Next buffer/tab | `Tab` | `Cmd+l` | ⚠️ Different |
| Previous buffer/tab | `Shift+Tab` | `Cmd+h` | ⚠️ Different |

**Note**: VSCode uses `Cmd+h/l` for tab navigation. Consider adding `Cmd+h/l` to Neovim for consistency.

### LSP Actions

| Action | Neovim | VSCode | Status |
|--------|--------|--------|--------|
| Go to definition | `gd` | `gd` | ✅ Synced |
| Go to declaration | `gD` | `gD` | ✅ Synced |
| Go to references | `gr` | `gr` | ✅ Synced |
| Go to implementation | `gi` | `gi` | ✅ Synced |
| Hover documentation | `K` | `gh` | ⚠️ Different |
| Peek definition | ❌ Missing | `gp` | 🔧 Add to Nvim |
| Rename symbol | `<leader>rn` | `<leader>rn` | ✅ Synced |
| Code action | `<leader>ca` | `<leader>ca` | ✅ Synced |
| Format document | ❌ Missing | `<leader>rf` | 🔧 Add to Nvim |
| Show diagnostic | `<leader>d` | N/A | ℹ️ Nvim only |
| Next diagnostic | `]d` | N/A | ℹ️ Nvim only |
| Previous diagnostic | `[d` | N/A | ℹ️ Nvim only |

### Editor UI

| Action | Neovim | VSCode | Status |
|--------|--------|--------|--------|
| File explorer | ❌ Missing | `<leader>e` | 🔧 Add to Nvim |
| Toggle terminal | ❌ Missing | `<leader>t` | 🔧 Add to Nvim |
| Clear search highlight | `Esc` | `<leader>h` | ⚠️ Different |

### Insert Mode

| Action | Neovim | VSCode | Status |
|--------|--------|--------|--------|
| Escape to normal | ❌ Missing | `jj` | 🔧 Add to Nvim |

### Visual Mode

| Action | Neovim | VSCode | Status |
|--------|--------|--------|--------|
| Stay in indent mode | `<` / `>` | `<` / `>` | ✅ Synced |
| Move lines up/down | ❌ Missing | `K` / `J` | 🔧 Add to Nvim |

### Navigation History

| Action | Neovim | VSCode | Status |
|--------|--------|--------|--------|
| Navigate back | ❌ Missing | `Ctrl+o` | 🔧 Add to Nvim |
| Navigate forward | ❌ Missing | `Ctrl+i` | 🔧 Add to Nvim |

---

## Priority Fixes for Neovim

### High Priority (Match VSCode)
1. ✅ `jj` to escape insert mode
2. ✅ `<leader>e` - File explorer toggle
3. ✅ `<leader>v` - Vertical split
4. ✅ `<leader>t` - Toggle terminal
5. ✅ `<leader>rf` - Format document
6. ✅ `gh` - Hover (instead of `K` for consistency)
7. ✅ `Ctrl+o` / `Ctrl+i` - Navigate back/forward

### Medium Priority
8. `<leader>Q` - Close all editors
9. `<leader>fs` - Find symbols (workspace)
10. `gp` - Peek definition
11. `K` / `J` in visual mode - Move lines up/down

### Low Priority
12. Consider `Cmd+h` / `Cmd+l` for buffer navigation (match VSCode tabs)

---

## VSCode Exceptions (Won't sync)

These keybindings are VSCode-specific and won't be mirrored in Neovim:

- **File explorer vim navigation** (`j/k/h/l` in explorer) - Neovim has its own file explorer plugins
- **Ctrl+j/k in quick open** - Telescope uses these for navigation
- **Easymotion** (`s` key) - Neovim uses leap.nvim or similar plugins

---

## Implementation Checklist

### Neovim Updates Needed
- [ ] Add `jj` escape mapping
- [ ] Add file explorer toggle (`<leader>e`)
- [ ] Add split keybindings (`<leader>v` for vertical, `<leader>s` for horizontal)
- [ ] Add terminal toggle (`<leader>t`)
- [ ] Add format document (`<leader>rf`)
- [ ] Add `gh` for hover (keep `K` as alias)
- [ ] Add `Ctrl+o` / `Ctrl+i` for navigation history
- [ ] Add visual mode line movement (`J` / `K`)
- [ ] Add `<leader>Q` for close all buffers

### VSCode Updates Needed
- [ ] None currently - VSCode is already well-configured

---

## Testing Checklist

After making changes, test these workflows:

### Basic Navigation
- [ ] `<leader>w` saves file in both
- [ ] `<leader>q` quits/closes in both
- [ ] `Ctrl+h/l` navigates splits/panes in both
- [ ] `<leader>ff` opens fuzzy finder in both

### LSP Features
- [ ] `gd` goes to definition in both
- [ ] `gr` shows references in both
- [ ] `<leader>rn` renames in both
- [ ] `<leader>ca` shows code actions in both
- [ ] `<leader>rf` formats in both

### Muscle Memory
- [ ] `jj` escapes insert mode in both
- [ ] `<leader>e` toggles file explorer in both
- [ ] `<leader>t` toggles terminal in both

---

## Notes

**Last Updated**: 2026-01-08

**Maintained by**: Trey Shanks

**Philosophy**: This is a living document. As you discover pain points or conflicts, update this file and adjust configs accordingly. The goal is frictionless context switching between Neovim and VSCode.
