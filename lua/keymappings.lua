-- Leader key
vim.g.mapleader = " "

-- Lazy
vim.keymap.set('n', '<leader>l', ':Lazy <CR>', { noremap = true, silent = false })

-- Common
vim.keymap.set('n', '<C-s>', ':wa<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<C-q>', function()
    vim.cmd(':Neotree close')
    vim.cmd('wa')
    vim.cmd('q')
end, { noremap = true, silent = false })
vim.keymap.set('n', '|', ':vsp<CR>', { noremap = true, silent = false })

-- Neo-Tree
vim.keymap.set('n', '<leader>E', ':Neotree filesystem reveal left toggle<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>e', ':Neotree float reveal toggle<CR>', { noremap = true, silent = false })

-- Alpha homepage
vim.keymap.set('n', '<leader>h', ':Alpha<CR>', { noremap = true, silent = false })

-- Buffers
vim.keymap.set('n', '<leader>c', function()
    vim.cmd('bd')
    vim.cmd('wa')
end, { noremap = true, silent = false })
vim.keymap.set('n', '<leader>br', ':BufferLineCloseRight<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>bl', ':BufferLineCloseLeft<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>bo', ':BufferLineCloseOthers<CR>', { noremap = true, silent = false })

-- ToggleTerm
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal size=12<CR>', { noremap = true, silent = false })

-- Mason / LSP
vim.keymap.set('n', '<leader>M', ':Mason<CR>', { noremap = true, silent = false })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', 'K', ':Lspsaga hover_doc<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>la', ':Lspsaga code_action<CR>', opts)
