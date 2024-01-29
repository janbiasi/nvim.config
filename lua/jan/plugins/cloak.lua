return {
    "laytan/cloak.nvim",
    config = function()
        local cloak = require("cloak")

        cloak.setup({
            enabled = true,
            cloak_character = '*',
            highlight_group = 'Comment',
            cloak_length = nil, -- set a number to obfuscate secret length
            patterns = {
                {
                    file_pattern = {
                        ".env",
                        ".env.local",
                        ".env.test",
                        ".env.stage",
                        ".env.prod",
                        "wrangler.toml",
                        ".dev.vars",
                    },
                    -- Match an equals sign and any character after it.
                    -- This can also be a table of patterns to cloak,
                    -- example: cloak_pattern = { ':.+', '-.+' } for yaml files.
                    cloak_pattern = '=.+',
                    replace = nil,
                },
            },
        })
    end
}
