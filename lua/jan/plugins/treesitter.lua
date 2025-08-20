-- All available languages for treesitter
local languages = {
  "bash",
  "c",
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
  "jsdoc",
  "json",
  "lua",
  "kdl",
  "markdown",
  "markdown_inline",
  "prisma",
  "rust",
  "sql",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "yaml",
  "zig",
}

return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  opts = {
    ensure_installed = languages,
    auto_install = true,
    highlight = {
      enable = true,
      -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
      --  If you are experiencing weird indenting issues, add the language to
      --  the list of additional_vim_regex_highlighting and disabled languages for indent.
      additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = { enable = true, disable = { 'ruby' } },
  },
}
