return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("dashboard").setup({
      theme = "hyper",
      config = {
        header = {
          "⣿⣿⣿⣿⣿⣿⣶⣾⣿⣿⣿⣿⣿⣶⣿⣿⣿⣷⣿⣿⣿⣿",
          "⣿⣿⡿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⣿⣿",
          "⣿⣿⣧⡀⠀⠉⠻⢿⣿⣿⣿⣿⣿⣏⠁⠀⠀⢙⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣄⠀⠀⠀⠙⠻⢿⣿⣿⣿⣷⣦⡀⣸⣿⣿⣿⣿",
          "⢹⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⡁",
          "⣾⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠉⠻⢿⣿⣿⣿⣿⡇",
          "⣿⣿⣿⣿⠿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠉⠻⣿⣿⣷",
          "⢹⣿⣿⠇⠀⠈⠻⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⢠⣿⣿⣿",
          "⣾⣿⣿⣄⡀⠀⠀⣈⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⣸⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠛⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        },
        week_header = {
          enable = false,
        },
        shortcut = {
          { desc = "Find file", group = "Label", action = "Telescope find_files", key = "f" },
          { desc = "Recent files", group = "DiagnosticHint", action = "Telescope oldfiles", key = "r" },
          { desc = "Live grep", group = "Constant", action = "Telescope live_grep", key = "g" },
          { desc = "New file", group = "Number", action = "enew", key = "n" },
          { desc = "File tree", group = "Special", action = "Neotree filesystem reveal left", key = "e" },
          { desc = "Terminal", group = "Function", action = "ToggleTerm direction=float", key = "t" },
          { desc = "Mason", group = "Type", action = "Mason", key = "m" },
          { desc = "Lazy", group = "@property", action = "Lazy", key = "l" },
          { desc = "Update plugins", group = "DiagnosticWarn", action = "Lazy update", key = "u" },
        },
        project = { enable = true, limit = 8 },
        mru = { enable = true, limit = 10 },
      },
    })
  end,
}
