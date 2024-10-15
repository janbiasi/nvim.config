-- set leader key to space
vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>ex', ':Ex<CR>', {})

-- NNN file explorer bindings
vim.keymap.set('n', '<leader>n', ':NnnPicker<CR>', {})
vim.keymap.set('n', '<leader>N', ':NnnExplorer<CR>', {})

-- Lazygit bindings
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', {})

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
