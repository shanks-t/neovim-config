return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- Render in normal mode (not just insert mode)
      render_modes = { "n", "c" },
      -- Heading configuration
      heading = {
        enabled = true,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      },
      -- Code block configuration
      code = {
        enabled = true,
        style = "full",
        border = "thin",
      },
      -- Checkbox configuration
      checkbox = {
        enabled = true,
        unchecked = { icon = "󰄱 " },
        checked = { icon = "󰱒 " },
      },
      -- Bullet point configuration
      bullet = {
        enabled = true,
        icons = { "●", "○", "◆", "◇" },
      },
    },
  },
}
