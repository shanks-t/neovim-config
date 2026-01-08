return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      -- Modern treesitter setup (nvim 0.11+)
      vim.treesitter.language.register('python', 'python')
      vim.treesitter.language.register('lua', 'lua')
      vim.treesitter.language.register('markdown', 'markdown')
      vim.treesitter.language.register('json', 'json')
      vim.treesitter.language.register('yaml', 'yaml')

      -- Install parsers via TSInstall command if needed
      -- You can run :TSInstall python lua markdown json yaml
    end,
  },
}
