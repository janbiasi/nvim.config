local opt = vim.opt -- for conciseness

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- backup, undo and swapfile settings
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- editor layout
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "120"
vim.opt.signcolumn = "yes"

-- hidden chars
vim.opt.list = true
vim.opt.listchars = {
  space = '⋅',
}

-- cursor line
vim.opt.cursorline = true -- highlight the current cursor line

-- https://github.com/catppuccin/nvim/issues/412
vim.o.pumblend = 0
vim.o.winblend = 0
