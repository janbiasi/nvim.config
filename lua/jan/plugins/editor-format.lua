return {
  {
    "tpope/vim-sleuth"
  },
  {
    "stevearc/conform.nvim",
    lazy = false,
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({
            async = true,
            lsp_fallback = true,
          })
        end,
        mode = "",
        desc = "[F]ormat buffer",
      },
    },
    opts = {
      notify_on_error = false,
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        java = { { "prettierd", "prettier" } },
        javascript = { { "prettierd", "prettier" } },
        typescript = { { "prettierd", "prettier" } },
        go = { "gofmt" },
        sql = { "sqlfluff" },
      },
      format_on_save = function(bufnr)
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { c = true, cpp = true }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
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
