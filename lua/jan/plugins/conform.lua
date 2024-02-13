return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>fb",
        function()
          require("conform").format({
            async = true,
            lsp_fallback = true,
          })
        end,
        mode = "",
        desc = "Format buffer",
      },
    },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        javascript = { { "prettierd", "prettier" } },
        typescript = { { "prettierd", "prettier" } },
        go = { "gofmt" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true
      },
      formatters = {
        shfmt = {
          prepend_args = { "-i", "2" },
        },
      },
    },
    init = function()
      -- vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
    end,
  },
}
