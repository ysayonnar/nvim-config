return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  ---@type neotree.Config?
  opts = {
    close_if_last_window = true,
    enable_git_status = true,
    enable_diagnostics = true,
    enable_modified_markers = true,
    enable_opened_markers = true,
    add_blank_line_at_top = false,
    popup_border_style = "rounded",

    source_selector = {
      winbar = true,
      statusline = false,
      show_scrolled_off_parent_node = true,
      sources = {
        { source = "filesystem", display_name = " 󰉋 Files " },
        { source = "buffers", display_name = " 󰈙 Buffers " },
        { source = "git_status", display_name = " 󰊢 Git " },
      },
      content_layout = "center",
      tabs_layout = "equal",
      padding = { left = 1, right = 1 },
      separator = { left = "▏", right = "▕" },
      separator_active = { left = "▏", right = "▕", override = "active" },
      highlight_tab = "NeoTreeTabInactive",
      highlight_tab_active = "NeoTreeTabActive",
      highlight_separator = "NeoTreeTabSeparatorInactive",
      highlight_separator_active = "NeoTreeTabSeparatorActive",
    },

    default_component_configs = {
      container = {
        enable_character_fade = true,
      },
      indent = {
        indent_size = 2,
        padding = 1,
        with_markers = true,
        indent_marker = "│",
        last_indent_marker = "└",
        highlight = "NeoTreeIndentMarker",
        with_expanders = true,
        expander_collapsed = "",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "󰜌",
        default = "*",
        highlight = "NeoTreeFileIcon",
      },
      modified = {
        symbol = "●",
        highlight = "NeoTreeModified",
      },
      name = {
        trailing_slash = false,
        use_git_status_colors = true,
        highlight_opened_files = "name",
        highlight = "NeoTreeFileName",
      },
      git_status = {
        symbols = {
          added = "󰐕",
          modified = "",
          deleted = "",
          renamed = "󰁕",
          untracked = "",
          ignored = "󰈙",
          unstaged = "󰄱",
          staged = "",
          conflict = "",
        },
      },
    },

    window = {
      position = "left",
      width = 35,
      mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
        ["/"] = "fuzzy_finder",
        ["f"] = "filter_on_submit",
        ["<C-x>"] = "clear_filter",
        ["<bs>"] = "navigate_up",
        ["."] = "set_root",
        ["?"] = "show_help",
        ["<"] = "prev_source",
        [">"] = "next_source",
      },
    },

    filesystem = {
      bind_to_cwd = true,
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
      group_empty_dirs = true,
      hijack_netrw_behavior = "open_default",
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
    },

    buffers = {
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
      group_empty_dirs = true,
    },

    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function()
          vim.opt_local.number = false
          vim.opt_local.relativenumber = false
          vim.opt_local.signcolumn = "no"
        end,
      },
    },
  },
}
