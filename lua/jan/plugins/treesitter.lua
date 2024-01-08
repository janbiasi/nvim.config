return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
		"vimdoc",
                "lua",
                "javascript",
		"typescript",
                "html",
		"go",
		"gomod",
		"graphql",
		"groovy",
		"java",
		"json",
		"rust",
		"vim",
		"yaml",
		"zig"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
