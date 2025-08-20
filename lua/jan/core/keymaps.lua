-- set leader key to space
vim.g.mapleader = ' '

-- shortcut to return to netrw explorer
vim.keymap.set('n', '<leader>ex', ':Ex<CR>', {})

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
