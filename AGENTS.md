# AGENTS.md

## Repository Overview

This is a portable Neovim configuration repository designed for modern Neovim (>= 0.11.5) with a focus on simplicity and maintainability.

## Purpose

This repository serves two primary goals:

1. **Portable Neovim Configuration**: A clean, modular Neovim setup that can be easily deployed across different machines
2. **Cross-Editor Consistency**: Includes VSCode settings and keybindings (in `vscode-sync/`) that mirror the Neovim workflow, enabling consistent muscle memory across both editors

## Philosophy

- **Simplicity over complexity**: Prefer straightforward, readable configurations over over-engineered solutions
- **Modern best practices**: Utilize modern Neovim (>0.11.5) features and plugins
- **Lazy loading**: Optimize startup time through intelligent plugin lazy-loading with lazy.nvim
- **Modular structure**: Keep plugin configurations separate and organized in `lua/plugins/`

## Repository Structure

```
.
├── init.lua                 # Main entry point
├── lua/
│   ├── config/             # Core configuration modules
│   └── plugins/            # Individual plugin configurations
├── vscode-sync/            # VSCode settings for workflow consistency
│   ├── settings.json       # VSCode settings
│   ├── keybindings.json    # VSCode keybindings matching Neovim
│   └── README.md           # VSCode sync documentation
├── KEYBINDINGS.md          # Neovim keybindings reference
├── README.md               # Main documentation
└── SETUP.md                # Installation and setup guide
```

## Contributing Guidelines

When making changes to this repository:

1. **Use conventional commits**: All commits should follow the conventional commit format
   - `feat:` for new features
   - `fix:` for bug fixes
   - `chore:` for maintenance tasks
   - `docs:` for documentation changes
   - `refactor:` for code refactoring

2. **Keep it simple**: Before adding a new plugin or feature, consider if it's truly necessary

3. **Test thoroughly**: Ensure changes work with Neovim >= 0.11.5

4. **Update documentation**: Keep README.md, KEYBINDINGS.md, and other docs in sync with changes

5. **Maintain VSCode parity**: When adding new keybindings or workflows, consider updating VSCode settings to maintain muscle memory consistency

## AI Agent Instructions

When working on this repository, AI agents should:

- Adhere to the simplicity-first philosophy
- Use conventional commits for all changes
- Maintain consistency between Neovim and VSCode configurations
- Ensure compatibility with Neovim >= 0.11.5
- Keep plugin configurations modular in separate files
- Avoid over-engineering solutions
- Commit to the main branch using proper conventional commit messages
