return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      -- Indent guide styling
      indent = {
        char = "│",  -- Character for indent lines (│ ┊ ┆ ¦ ╎ ┇)
        tab_char = "│",
      },
      -- Scope highlighting (highlights current code block)
      scope = {
        enabled = true,
        show_start = true,  -- Show line at start of scope
        show_end = false,   -- Don't show line at end
        highlight = "IblScope",
      },
      -- Exclude certain filetypes
      exclude = {
        filetypes = {
          "help",
          "neo-tree",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    },
  },
}
