return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#3b2d2b", -- Default background
                base01 = "#816865", -- Lighter background (status bars)
                base02 = "#3b2d2b", -- Selection background
                base03 = "#816865", -- Comments, invisibles
                base04 = "#ccc8b3", -- Dark foreground
                base05 = "#ccb3b3", -- Default foreground
                base06 = "#ccb3b3", -- Light foreground
                base07 = "#ccc8b3", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#cd9d98", -- Variables, errors, red
                base09 = "#cd9d98", -- Integers, constants, orange
                base0A = "#cdbf98", -- Classes, types, yellow
                base0B = "#a8bdad", -- Strings, green
                base0C = "#a2c1c3", -- Support, regex, cyan
                base0D = "#a6babf", -- Functions, keywords, blue
                base0E = "#cd9f98", -- Keywords, storage, magenta
                base0F = "#b3b3b3", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
