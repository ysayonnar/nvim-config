return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    { "catppuccin/nvim", name = "catppuccin" },
  },
  config = function()
    require("bufferline").setup({
      options = { close_icon = "5" },
      highlights = require("catppuccin.special.bufferline").get_theme(),
    })
  end,
}
