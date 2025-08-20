vim.o.termguicolors = true

return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false,    -- load this during startup
  priority = 1000, -- before other plugins
  config = function()
    require('github-theme').setup({
      options = {
        hide_end_of_buffer = false,
        transparent = true,
        styles = {
          comments = 'italic'
        }
      }
    })

    vim.cmd.colorscheme 'github_dark_default'
  end,
}
