require("core")        -- core setting such as vim.opt

require("config.lazy") -- lazy plugins loader

require("keymappings") -- keymappings for all core and plugins

-- Bufferline is configured in lua/plugins/bufferline.lua
vim.opt.termguicolors = true

-- Toggleterm
require("toggleterm").setup {
    open_mapping = [[<F7>]],
    direction = 'float',
    start_in_insert = true,
}

-- Lualine
require('lualine').setup()

-- Format on save (only when an attached LSP supports formatting)
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        if not vim.bo.modifiable then
            return
        end
        vim.lsp.buf.format({
            async = false,
            filter = function(client, bufnr)
                return client:supports_method("textDocument/formatting", bufnr)
            end,
        })
    end,
})

vim.diagnostic.config({
    update_in_insert = true,
    severity_sort = true,
    virtual_text = {
        spacing = 4,
        prefix = "●",
    },
    signs = true,
    underline = true,
    float = {
        border = "rounded",
    },
})


vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "term://*",
    callback = function()
        vim.cmd("startinsert")
    end,
})

-- Return to insert mode when navigating back into an open terminal window.
vim.api.nvim_create_autocmd("WinEnter", {
    callback = function()
        if vim.bo.buftype == "terminal" then
            vim.cmd.startinsert()
        end
    end,
})
