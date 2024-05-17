return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      -- syntax highlighting
      highlight = { enable = true },
      -- identation
      indent = { enable = true },
      -- installed syntax support
      ensure_installed = {
        "bash",
        "css",
        "dockerfile",
        "gitignore",
        "go",
        "gomod",
        "graphql",
        "groovy",
        "html",
        "java",
        "javascript",
        "json",
        "lua",
        "kdl",
        "markdown_inline",
        "markdown",
        "prisma",
        "rust",
        "sql",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
        "zig",
      },
      sync_install = false,
    })
  end,
}
