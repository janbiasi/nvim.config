return {
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-frecency.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },

      'nvim-telescope/telescope-ui-select.nvim',
      {
        'nvim-tree/nvim-web-devicons',
        enabled = vim.g.have_nerd_font,
      },
    },
    opts = function()
      return {
        defaults = {
          vimgrep_arguments = {
            'rg',
            '-L',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
          },
          previewer = true,
          file_previewer = require('telescope.previewers').vim_buffer_cat.new,
          grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
          qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
        },
        extensions = {
          file_browser = {
            theme = 'ivy',
            hijack_netrw = false,
          },
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
          ['frecency'] = {}
        },
        extensions_list = {
          'file_browser',
          'fzf',
          'lazygit',
          'frecency'
        },
      }
    end,
    init = function()
      local builtin = require 'telescope.builtin'
      local wk = require 'which-key'

      wk.add {
        { '<leader>f',  group = 'file' },
        { '<leader>ff', builtin.find_files,  desc = 'Find files in cwd' },
        { '<leader>fb', builtin.buffers,     desc = 'Find in buffer' },
        { '<leader>fg', builtin.live_grep,   desc = 'Find with grep' },
        { '<leader>fh', builtin.help_tags,   desc = 'Find help' },
        { '<leader>fs', builtin.grep_string, desc = 'Find string with grep' },
      }
    end,
    config = function(_, opts)
      local telescope = require 'telescope'

      telescope.setup(opts)

      for _, ext in ipairs(opts.extensions_list) do
        telescope.load_extension(ext)
      end
    end,
  },
}
