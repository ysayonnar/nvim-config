# nvim

Neovim 0.11+. Leader: `Space`.

```bash
mv ~/.config/nvim ~/.config/nvim.bak
git clone --depth 1 https://github.com/ysayonnar/nvim-config ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```

## Keymaps

| Key | Action |
|-----|--------|
| `<C-h/j/k/l>` | Window / tmux pane |
| `<C-\>` | Previous window |
| `<C-s>` | Save all |
| `<C-q>` | Close neo-tree, save, quit |
| <code>\|</code> | Vertical split |
| `<leader>L` | Lazy |
| `<leader>E` | Neo-tree (sidebar) |
| `<leader>e` | Neo-tree (float) |
| `<leader>h` | Dashboard |
| `<leader>c` | Close buffer |
| `<leader>br` | Close buffers right |
| `<leader>bl` | Close buffers left |
| `<leader>bo` | Close other buffers |
| `<leader>tf` | Terminal (float) |
| `<leader>tv` | Terminal (vertical) |
| `<leader>th` | Terminal (horizontal) |
| `<leader>M` | Mason |
| `<leader>tt` | Telescope |
| `<leader>la` | LSP code action |
| `gd` | Go to definition |
| `K` | Hover docs |
| `<F7>` | ToggleTerm |
| `Esc` (in terminal) | Close terminal |

Source: `lua/keymappings.lua`
