return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && npx --yes yarn install",
    config = function()
      -- Set to 1 to open preview page in browser when entering markdown buffer
      vim.g.mkdp_auto_start = 0

      -- Set to 1 to auto close preview when changing from markdown buffer
      vim.g.mkdp_auto_close = 1

      -- Set to 1 to refresh preview when saving the buffer or leaving insert mode
      vim.g.mkdp_refresh_slow = 0

      -- Specify browser to open preview page
      -- vim.g.mkdp_browser = 'firefox'

      -- Set to 1 to echo preview page url in command line when opening preview page
      vim.g.mkdp_echo_preview_url = 1
    end,
  },
}
