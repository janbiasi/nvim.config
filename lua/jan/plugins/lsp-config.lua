local lua_ls_setup = {
    Lua = {
        runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = "LuaJIT",
        },
        diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { "vim" },
        },
        workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
            enable = false,
        },
    },
}

return {
    {

        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",   -- Lua
                    "tsserver", -- TypeScript
                    "html",     -- HTML
                    "gopls",    -- Go
                    "dockerls", -- Docker
                    "cssls",    -- CSS
                    "jsonls",   -- JSON
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup(lua_ls_setup)
            lspconfig.tsserver.setup({})
            lspconfig.html.setup({})
            lspconfig.gopls.setup({})
            lspconfig.dockerls.setup({})
            lspconfig.cssls.setup({})
            lspconfig.jsonls.setup({})

            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        end
    }
}
