return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      -- Modern treesitter setup for Neovim 0.10+ (uses native API, not .configs)
      -- Languages to install
      local langs = {
        "python",
        "lua",
        "go",
        "markdown",
        "json",
        "yaml",
        "bash",
        "dockerfile",
        "toml",
      }

      -- Install parsers
      local ts_install = require("nvim-treesitter.install")
      ts_install.prefer_git = false -- Use pre-built binaries for speed

      for _, lang in ipairs(langs) do
        vim.treesitter.language.register(lang, lang)
      end

      -- Auto-install missing parsers on buffer open
      vim.api.nvim_create_autocmd({ "FileType" }, {
        callback = function()
          local ft = vim.bo.filetype
          if vim.tbl_contains(langs, ft) then
            pcall(vim.treesitter.start)
          end
        end,
      })

      -- Incremental selection keymaps
      vim.keymap.set('n', '<C-space>', function()
        require('nvim-treesitter.incremental_selection').init_selection()
      end, { desc = 'Start treesitter selection' })

      vim.keymap.set('x', '<C-space>', function()
        require('nvim-treesitter.incremental_selection').node_incremental()
      end, { desc = 'Expand treesitter selection' })

      vim.keymap.set('x', '<bs>', function()
        require('nvim-treesitter.incremental_selection').node_decremental()
      end, { desc = 'Shrink treesitter selection' })
    end,
  },
}
