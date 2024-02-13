-- set leader key to space
vim.g.mapleader = " "

-- NNN file explorer bindings
vim.keymap.set("n", "<leader>n", ':NnnPicker<CR>', opts)
vim.keymap.set("n", "<leader>N", ':NnnExplorer<CR>', opts)
