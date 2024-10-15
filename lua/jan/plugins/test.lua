vim.g['test#strategy'] = 'vimux'

return {
  {
    'vim-test/vim-test',
    dependencies = {
      'preservim/vimux',
    },
    keys = {
      { '<leader>t', ':TestNearest<CR>', '[T]est Nearest' },
      { '<leader>T', ':TestFile<CR>', '[T]est File' },
    },
  },
}
