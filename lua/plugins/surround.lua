return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use stable releases
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Default keybindings:
        -- ys{motion}{char} - Add surround (e.g., ysiw" surrounds word with ")
        -- ds{char} - Delete surround (e.g., ds" deletes surrounding ")
        -- cs{old}{new} - Change surround (e.g., cs"' changes " to ')
        -- Visual mode: S{char} - Surround selection

        -- Examples:
        -- ysiw" → "word"
        -- ysiw' → 'word'
        -- ysiw( → ( word )
        -- ysiw{ → { word }
        -- cs"' → "word" becomes 'word'
        -- ds" → "word" becomes word
        -- In visual mode, select text then S" → surrounds with "
      })
    end,
  },
}
