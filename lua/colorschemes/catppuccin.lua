return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = false,
      integrations = {
        bufferline = true,
        cmp = true,
        gitsigns = true,
        neotree = true,
        telescope = true,
        treesitter = true,
        mason = true,
        native_lsp = {
          enabled = true,
        },
      },
      custom_highlights = {
        NeoTreeNormal = { fg = "#cdd6f4", bg = "#181825" },
        NeoTreeNormalNC = { fg = "#cdd6f4", bg = "#181825" },
        NeoTreeWinSeparator = { fg = "#11111b", bg = "#181825" },
        NeoTreeTitleBar = { fg = "#181825", bg = "#89b4fa", style = { "bold" } },
        NeoTreeTabActive = { fg = "#cba6f7", bg = "#181825", style = { "bold" } },
        NeoTreeTabInactive = { fg = "#6c7086", bg = "#11111b" },
        NeoTreeIndentMarker = { fg = "#45475a" },
        NeoTreeExpander = { fg = "#89b4fa" },
        NeoTreeDirectoryName = { fg = "#89b4fa" },
        NeoTreeDirectoryIcon = { fg = "#89b4fa" },
        NeoTreeRootName = { fg = "#cba6f7", style = { "bold" } },
        NeoTreeFileNameOpened = { fg = "#f5c2e7" },
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
