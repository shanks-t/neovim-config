return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.9', -- Updated for nvim 0.11.5 compatibility
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')

      -- Override telescope's treesitter highlighter to prevent errors
      local previewers = require('telescope.previewers')
      local previewers_utils = require('telescope.previewers.utils')

      -- Monkey-patch to disable treesitter highlighting in previews
      previewers_utils.ts_highlighter = function() return false end
      previewers_utils.highlighter = function(bufnr, ft)
        vim.api.nvim_set_option_value('syntax', ft, { buf = bufnr })
      end

      telescope.setup({
        defaults = {
          mappings = {
            i = {
              ['<C-j>'] = actions.move_selection_next,
              ['<C-k>'] = actions.move_selection_previous,
            },
          },
        },
        pickers = {
          find_files = {
            theme = "dropdown",
          },
          live_grep = {
            theme = "dropdown",
          },
        },
      })

      -- Keymaps
      vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
      vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Grep search' })
      vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find buffers' })
      vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help tags' })
      vim.keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>', { desc = 'Recent files' })

      -- VSCode-style Ctrl+P
      vim.keymap.set('n', '<C-p>', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
    end,
  },
}
