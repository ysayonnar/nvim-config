require("core")        -- core setting such as vim.opt

require("config.lazy") -- lazy plugins loader

require("keymappings") -- keymappings for all core and plugins

require('kanagawa').setup({
    transparent = true,
})

-- Colorscheme setup
vim.schedule(function()
    vim.cmd.colorscheme("kanagawa")
end)

-- Bufferline settings
vim.opt.termguicolors = true
require('bufferline').setup({
    -- highlights = require("catppuccin.groups.integrations.bufferline").get()
})

-- Toggleterm
require("toggleterm").setup {
    open_mapping = [[<F7>]],
    direction = 'float',
}

-- Lualine
require('lualine').setup()

-- TreeSitter
require('nvim-treesitter.configs').setup({
    ensure_installed = { "go", "c", "lua", "cpp", "python" },
    highlight = { enable = true },
    indent = { enable = true },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
        }
    },
    textobjects = {
        select = {
            enable = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
            }
        }
    }
})

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})
-- Errors and warnings
vim.diagnostic.config({
    virtual_text = {
        prefix = '●',
        spacing = 4,
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

-- Mini and comment
require('mini.pairs').setup()
require('Comment').setup()

-- Telescope
require('telescope').setup({
    'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
     dependencies = { 'nvim-lua/plenary.nvim' }
    })
