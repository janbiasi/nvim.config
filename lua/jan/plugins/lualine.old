return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local cp = require("catppuccin.palettes").get_palette("mocha")

      require("lualine").setup({
        options = {
          theme = "catppuccin",
          alpha = true,
          icons_enabled = true,
          component_separators = "|",
          section_separators = { left = "", right = "" },
        },
        extensions = { "mason", "quickfix" },
        sections = {
          -- lualine_a = {
          --   { 'mode', separator = { left = '' }, right_padding = 2 },
          -- },
          -- lualine_b = { 'branch', 'diff' },
          -- lualine_c = { 'filetype', 'filename', 'diagnostics' },
          lualine_x = {
            {
              require("lazy.status").updates,
              cond = require("lazy.status").has_updates,
              color = { fg = cp.yellow },
            },
          },
          lualine_y = {
            {
              require("noice").api.status.message.get_hl,
              cond = require("noice").api.status.message.has,
            },
            {
              require("noice").api.status.command.get,
              cond = require("noice").api.status.command.has,
              color = { fg = cp.blue },
            },
            {
              require("noice").api.status.mode.get,
              cond = require("noice").api.status.mode.has,
              color = { fg = cp.blue },
            },
            {
              require("noice").api.status.search.get,
              cond = require("noice").api.status.search.has,
              color = { fg = cp.blue },
            },
          },
          lualine_z = { "location" },
        },
      })
    end,
  },
}
