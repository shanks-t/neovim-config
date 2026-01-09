# New Features Added (2026-01-08)

## 🚀 What's New

### 1. **Auto-Pairs** (`nvim-autopairs`)
Automatically closes brackets, quotes, and parentheses.

**Examples:**
- Type `(` → Automatically becomes `(|)` (cursor in middle)
- Type `"` → Automatically becomes `"|"`
- Delete `(` → Automatically deletes matching `)`
- Works with: `()`, `[]`, `{}`, `""`, `''`, ``` `` ```

**Special feature - Fast Wrap:**
- Type `Alt+e` to wrap the next word with the pair you just typed
- Example: Type `(Alt+e` on a word → `(word)`

**Integration:** Works seamlessly with nvim-cmp completion!

---

### 2. **Surround Operations** (`nvim-surround`)
Quickly add, change, or delete surrounding characters.

**Keybindings:**

| Command | Description | Example |
|---------|-------------|---------|
| `ys{motion}{char}` | Add surround | `ysiw"` → surround word with `"` |
| `ds{char}` | Delete surround | `ds"` → remove `"` around cursor |
| `cs{old}{new}` | Change surround | `cs"'` → change `"` to `'` |
| Visual: `S{char}` | Surround selection | Select text, `S"` → wrap with `"` |

**Common Examples:**
```python
# Cursor on 'name'
name → ysiw" → "name"
name → ysiw' → 'name'
name → ysiw( → ( name )
name → ysiw{ → { name }

# Change quotes
"hello" → cs"' → 'hello'
'hello' → cs'` → `hello`

# Delete quotes
"hello" → ds" → hello

# Visual mode
# Select: user_name
# Press: S"
# Result: "user_name"
```

---

### 3. **Debugger** (`nvim-dap` + `nvim-dap-ui` + `nvim-dap-python`)
Full-featured debugging like VSCode!

**Quick Start:**
1. Open a Python file
2. Put cursor on a line, press `<leader>b` to set breakpoint (red dot appears)
3. Press `F5` to start debugging
4. UI opens automatically showing variables, stack, etc.

**Keybindings:**

| Key | Action | Description |
|-----|--------|-------------|
| `F5` | Continue | Start debugging or continue to next breakpoint |
| `F10` | Step Over | Execute current line, don't go into functions |
| `F11` | Step Into | Go into function calls |
| `F12` | Step Out | Exit current function |
| `<leader>b` | Toggle Breakpoint | Add/remove breakpoint on current line |
| `<leader>B` | Conditional Breakpoint | Breakpoint that only triggers on condition |
| `<leader>dt` | Terminate | Stop debugging |
| `<leader>du` | Toggle UI | Show/hide debug UI |
| `<leader>dm` | Debug Test Method | Debug the test function under cursor (pytest) |
| `<leader>dr` | Open REPL | Interactive debug console |

**UI Layout:**
- **Left Panel**: Variables (scopes), breakpoints, call stack, watches
- **Bottom Panel**: REPL console, program output
- Auto-opens when debugging starts, auto-closes when done

**Visual Indicators:**
- 🔴 Red dot = Regular breakpoint
- 🟡 Yellow dot = Conditional breakpoint
- ▶️ Arrow = Current execution line

**Python-Specific:**
- Automatically uses your active virtual environment
- Supports pytest debugging: `<leader>dm` on a test function

---

### 4. **Split Management**
Quick keybindings for window splits.

| Key | Action |
|-----|--------|
| `<leader>v` | Create vertical split |
| `<leader>s` | Create horizontal split |
| `Ctrl+h` | Navigate to left window |
| `Ctrl+j` | Navigate to bottom window |
| `Ctrl+k` | Navigate to top window |
| `Ctrl+l` | Navigate to right window |

---

### 5. **Auto-Save Improvements**
Files now save automatically after you stop typing (500ms delay).

**How it works:**
- Stop typing for 500ms → File saves automatically
- Also saves when you switch files or lose focus
- Only saves if file is modified and writable
- Silent - no annoying messages

**You can still manually save:**
- `<leader>w` - Force save immediately
- `:w` - Traditional Vim save

---

### 6. **Insert Mode Quick Escape**
Type `jj` quickly to exit insert mode (instead of reaching for Esc).

**Usage:**
```
In insert mode, type: jj
→ Instantly switches to normal mode
```

Faster than `Esc` and more ergonomic. Standard in Vim community.

---

### 7. **Telescope Hidden Files**
Fuzzy finder now searches hidden files by default.

**What changed:**
- `<leader>ff` now finds `.env`, `.gitignore`, `.config`, etc.
- `<leader>fg` (grep) also searches hidden files
- Still excludes `.git/` directory (don't want to search git internals)

**No action needed** - Just works!

---

## 📚 Usage Examples

### Example 1: Debugging Python Code

```python
# file: app.py
def calculate_total(prices):
    total = 0
    for price in prices:
        total += price  # <-- Put cursor here, press <leader>b
    return total

result = calculate_total([10, 20, 30])
print(result)
```

1. Put cursor on line 4, press `<leader>b` → Breakpoint set (🔴)
2. Press `F5` → Debugging starts, stops at line 4
3. Left panel shows: `total = 10`, `price = 10`, `prices = [10, 20, 30]`
4. Press `F10` → Steps to next line
5. Press `F5` → Continues to next iteration
6. Press `<leader>dt` → Stops debugging

---

### Example 2: Surround Workflow

```python
# You have:
user_name = input()

# Want to add f-string quotes:
# 1. Put cursor on 'user_name'
# 2. Press: ysiw"
# Result: "user_name"

# Now add f-string:
# 1. Put cursor on "user_name"
# 2. Press: csf"f"
# Or just manually type 'f' before the "

# Final result:
f"user_name"
```

---

### Example 3: Quick Split Workflow

1. Open file: `nvim app.py`
2. Press `<leader>v` → Vertical split (two columns)
3. Press `<leader>ff` → Find another file
4. Now you have two files side-by-side
5. Press `Ctrl+h` / `Ctrl+l` → Switch between them
6. Press `<leader>s` in right split → Horizontal split in right column
7. Now you have 3 files visible!

---

## 🎓 Learning Resources

### Debugger Deep Dive
- **Inspect variables**: In debug mode, left panel shows all variables in current scope
- **Watches**: Add expressions to watch (e.g., `len(my_list)`)
- **REPL**: `<leader>dr` opens interactive console - type Python code!
- **Conditional breakpoints**: `<leader>B` then type condition like `x > 10`

### Surround Mastery
- `yss"` → Surround entire line with quotes
- `ySiw"` → Surround word and put quotes on new lines (for blocks)
- `dst` → Delete surrounding HTML tag
- `cst<div>` → Change surrounding tag to `<div>`

### Auto-Pairs Tricks
- Type `)` → Jumps over the auto-paired `)` instead of creating new one
- Type `<CR>` inside `{}` → Creates properly indented block
- Type `<BS>` with `(|)` → Deletes both pairs

---

## 🔧 Configuration Files

All new features are in separate plugin files:
- `~/.config/nvim/lua/plugins/autopairs.lua`
- `~/.config/nvim/lua/plugins/surround.lua`
- `~/.config/nvim/lua/plugins/debugger.lua`

Core updates in:
- `~/.config/nvim/init.lua` - Split keybindings, auto-save, jj escape

---

## ✅ Installation

Restart Neovim and run:
```
:Lazy sync
```

Wait for all plugins to install, then restart Neovim again.

---

## 🎯 Next Steps

1. **Test autopairs**: Type `(` and watch it auto-complete
2. **Test surround**: Try `ysiw"` on a word
3. **Test debugger**: Set a breakpoint with `<leader>b`, press `F5`
4. **Test splits**: Try `<leader>v` to create vertical split
5. **Test jj**: In insert mode, type `jj` to escape
6. **Test auto-save**: Make a change, wait 500ms, check if file saved

---

**Enjoy your upgraded Neovim! 🚀**
