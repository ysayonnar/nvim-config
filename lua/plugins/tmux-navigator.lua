return {
  "christoomey/vim-tmux-navigator",
  init = function()
    -- Define all mappings in Lua so terminal mode works without $TMUX too.
    vim.g.tmux_navigator_no_mappings = 1
  end,
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
    "TmuxNavigatorProcessList",
  },
  keys = {
    { "<c-h>", "<cmd>TmuxNavigateLeft<cr>", mode = { "n", "t" }, desc = "Navigate left" },
    { "<c-j>", "<cmd>TmuxNavigateDown<cr>", mode = { "n", "t" }, desc = "Navigate down" },
    { "<c-k>", "<cmd>TmuxNavigateUp<cr>", mode = { "n", "t" }, desc = "Navigate up" },
    { "<c-l>", "<cmd>TmuxNavigateRight<cr>", mode = { "n", "t" }, desc = "Navigate right" },
    { "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>", mode = { "n", "t" }, desc = "Navigate previous" },
  },
}
