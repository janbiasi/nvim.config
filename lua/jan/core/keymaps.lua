-- set leader key to space
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ex", ":Ex<CR>", {})

-- NNN file explorer bindings
vim.keymap.set("n", "<leader>n", ":NnnPicker<CR>", {})
vim.keymap.set("n", "<leader>N", ":NnnExplorer<CR>", {})

-- Lazygit bindings
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", {})
