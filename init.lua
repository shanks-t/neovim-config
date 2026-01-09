-- Neovim Configuration
-- Leader key (MUST be set before lazy.nvim)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Bootstrap lazy.nvim
require("config.lazy")

-- Basic Settings
vim.opt.number = true              -- Show line numbers
-- vim.opt.relativenumber = true   -- Relative line numbers (disabled)
vim.opt.mouse = 'a'                -- Enable mouse support
vim.opt.clipboard = 'unnamedplus'  -- Use system clipboard for yank/paste
vim.opt.ignorecase = true          -- Case insensitive search
vim.opt.smartcase = true           -- Unless uppercase is used
vim.opt.hlsearch = false           -- Don't highlight search results
vim.opt.wrap = false               -- Don't wrap lines
vim.opt.breakindent = true         -- Preserve indentation in wrapped text
vim.opt.tabstop = 4                -- Tab width
vim.opt.shiftwidth = 4             -- Indent width
vim.opt.expandtab = true           -- Use spaces instead of tabs
vim.opt.signcolumn = 'yes'         -- Always show sign column
vim.opt.updatetime = 250           -- Faster completion
vim.opt.termguicolors = true       -- True color support
vim.opt.scrolloff = 8              -- Lines to keep above/below cursor
vim.opt.splitright = true          -- Vertical splits open to the right
vim.opt.splitbelow = true          -- Horizontal splits open below

-- Auto save on focus lost and when switching buffers
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave" }, {
  pattern = "*",
  command = "silent! wa",
})

-- Auto save after typing stops (500ms delay)
vim.opt.updatetime = 500
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  pattern = "*",
  callback = function()
    if vim.bo.modified and not vim.bo.readonly and vim.fn.expand("%") ~= "" and vim.bo.buftype == "" then
      vim.cmd("silent! write")
    end
  end,
})

-- Basic Keymaps
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit' })

-- Split management
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { desc = 'Vertical split' })
vim.keymap.set('n', '<leader>s', ':split<CR>', { desc = 'Horizontal split' })

-- Quick escape from insert mode
vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Exit insert mode' })

-- Better window navigation (Ctrl+h/j/k/l)
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Navigate to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Navigate to bottom window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Navigate to top window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Navigate to right window' })

-- Buffer navigation (Tab/Shift+Tab)
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>x', ':bdelete<CR>', { desc = 'Close buffer' })

-- Clear search highlighting
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', { desc = 'Clear search highlighting' })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right' })

-- Find and Replace
-- Current word in file
vim.keymap.set('n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>', { desc = 'Replace word in file' })
-- Selected text in file
vim.keymap.set('v', '<leader>s', '"hy:%s/<C-r>h/<C-r>h/gI<Left><Left><Left>', { desc = 'Replace selection in file' })

-- File operations
vim.keymap.set('n', '<leader>nf', ':e <C-r>=expand("%:p:h")<CR>/', { desc = 'New file in current directory' })
vim.keymap.set('n', '<leader>nd', ':!mkdir -p <C-r>=expand("%:p:h")<CR>/', { desc = 'New directory in current path' })
