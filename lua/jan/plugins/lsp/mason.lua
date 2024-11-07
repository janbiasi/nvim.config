return {
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      {
        "williamboman/mason.nvim",
        config = true
      },
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", -- Lua
          "ts_ls", -- TypeScript
          "html", -- HTML
          "gopls", -- Go
          "golangci_lint_ls", -- Go
          "dockerls", -- Docker
          "cssls", -- CSS
          "jsonls", -- JSON
          "prismals", -- Prisma
          "rust_analyzer", -- Rust
          "eslint", -- ESLint
          "jsonls", -- JSON
          "sqlls", -- SQL
        },
      })
    end,
  },
}
