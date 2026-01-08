return {
  {
    "jglasovic/venv-lsp.nvim",
    ft = "python", -- Only load for Python files
    config = function()
      require("venv-lsp").setup()
    end,
  },
}
