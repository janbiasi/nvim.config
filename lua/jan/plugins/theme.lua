vim.o.termguicolors = true

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      -- NOTE: this breaks cmp background colors
      transparent_background = true,
      styles = {
        comments = { "italic" },
      },
      integrations = {
        alpha = true,
        cmp = true,
        treesitter = true,
        telescope = {
          enabled = true,
          -- style = "nvchad"
        },
        -- gitsigns.nvim
        gitsigns = true,
        -- lsp
        mason = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
          inlay_hints = {
            background = true,
          },
        },
        -- trouble.nvim
        lsp_trouble = true,
        -- noice.nvim
        noice = true,
        notify = true,
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
