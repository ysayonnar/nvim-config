# Installation
You need Novim 8.0+ pre-installed
Then make backup of your previous configuration:
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```
Clone repository and move config to `~/.config/nvim`:
```bash
git clone --depth 1 https://github.com/ysayonnar/nvim-config ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```

# Key mappings
---

## 🔑 Leader Key

```lua
vim.g.mapleader = " "
```

## 🚀 Lazy.nvim

| Keybinding   | Action            |
|--------------|-------------------|
| `<leader>l`  | Open Lazy.nvim    |

---

## 💾 General

| Keybinding   | Action                            |
|--------------|-----------------------------------|
| `<C-s>`      | Save all files                    |
| `<C-q>`      | Close Neo-tree, save all, quit    |
| `|`          | Open vertical split               |

---

## 📂 Neo-tree

| Keybinding   | Action                                 |
|--------------|----------------------------------------|
| `<leader>E`  | Toggle left-side file explorer         |
| `<leader>e`  | Toggle floating file explorer          |

---

## 🏠 Alpha (Dashboard)

| Keybinding   | Action          |
|--------------|-----------------|
| `<leader>h`  | Open Alpha.nvim |

---

## 📄 Buffers

| Keybinding     | Action                                 |
|----------------|----------------------------------------|
| `<leader>c`    | Close current buffer and save all files |
| `<leader>br`   | Close buffers to the right             |
| `<leader>bl`   | Close buffers to the left              |
| `<leader>bo`   | Close all buffers except the current   |

---

## 🧮 Terminal (ToggleTerm)

| Keybinding     | Action                             |
|----------------|------------------------------------|
| `<leader>tf`   | Floating terminal                  |
| `<leader>tv`   | Vertical terminal (40% width)      |
| `<leader>th`   | Horizontal terminal (12 lines)     |

---

## 🔧 Mason & LSP

| Keybinding     | Action                                 |
|----------------|----------------------------------------|
| `<leader>M`    | Open Mason                             |
| `gd`           | Go to definition                       |
| `K`            | Show hover documentation               |
| `<leader>la`   | Show LSP code actions (via Lspsaga)    |

---


