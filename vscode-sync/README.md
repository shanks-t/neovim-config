# VSCode Configuration Sync

This directory contains copies of VSCode configuration files for reference and version control.

## Files

- `settings.json` - VSCode editor settings and vim plugin configuration
- `keybindings.json` - Custom keybindings for VSCode

## Purpose

These files are synced to the Neovim config repo to:

1. **Version control** - Track changes to VSCode config alongside Neovim
2. **Documentation** - Reference when designing unified keybindings
3. **Backup** - Easy recovery of VSCode settings

## Sync Strategy

**Source of Truth**: Original files live at:
- `~/Library/Application Support/Code/User/settings.json`
- `~/Library/Application Support/Code/User/keybindings.json`

**When to Update This Directory**:
- After making significant keybinding changes in VSCode
- When adding new vim mappings that should be documented
- Before making breaking changes to test rollback

**Update Command**:
```bash
cp ~/Library/Application\ Support/Code/User/settings.json ~/.config/nvim/vscode-sync/
cp ~/Library/Application\ Support/Code/User/keybindings.json ~/.config/nvim/vscode-sync/
```

## Related Files

- `../KEYBINDINGS.md` - Comprehensive keybinding comparison and sync strategy
- `../init.lua` - Neovim base configuration
- `../lua/plugins/` - Neovim plugin configurations

## Philosophy

We maintain unified muscle memory across editors by:
1. Designing Neovim keybindings based on community standards
2. Syncing VSCode to match Neovim where practical
3. Documenting exceptions where tools differ

See `../KEYBINDINGS.md` for the full strategy.
