return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",     -- LSP source
        "hrsh7th/cmp-buffer",       -- buffer source
        "hrsh7th/cmp-path",         -- path source
        "hrsh7th/cmp-cmdline",      -- :help source
        "L3MON4D3/LuaSnip",         -- snippets
        "saadparwaiz1/cmp_luasnip", -- luasnip source
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
            }, {
                { name = "buffer" },
                { name = "path" },
            }),
            -- window = {
            --     documentation = cmp.config.window.bordered(),
            --     completion = cmp.config.window.bordered({
            --         winhighlight = 'Normal:CmpPmenu,CursorLine:PmenuSel,Search:None'
            --     }),
            -- },
            window = {
                completion = { -- rounded border; thin-style scrollbar
                    border = 'rounded',
                    scrollbar = '║',
                },
                documentation = { -- no border; native-style scrollbar
                    border = nil,
                    scrollbar = '',
                    -- other options
                },
            },
        })
    end,
}
