return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        size = 12,
        open_mapping = [[<c-\>]], -- or your preferred keybinding
        direction = "horizontal", -- or "vertical", "float"
      })
    end,
  },
}
