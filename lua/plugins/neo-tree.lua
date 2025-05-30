return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
      window = {
          width = 30,
          mappings = {
              ["l"] = "open",
              ["h"] = "close_node",
          }
      },
      filesystem = {
        filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignored = true,
            hide_by_name = {
                ".DS_Store",
                "thumbs.db",
            },
            never_show_by_pattern = {
                "*.tmp",
                "*.cache",
            },
      },
      group_empty_dirs = true,
    }
  },
}
