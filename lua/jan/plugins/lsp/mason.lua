return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", -- Lua
          "tsserver", -- TypeScript
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
