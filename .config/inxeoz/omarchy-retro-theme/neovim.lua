return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#2b3b37", -- Default background
                base01 = "#65817a", -- Lighter background (status bars)
                base02 = "#2b3b37", -- Selection background
                base03 = "#65817a", -- Comments, invisibles
                base04 = "#ccc4b3", -- Dark foreground
                base05 = "#ccc4b3", -- Default foreground
                base06 = "#ccc4b3", -- Light foreground
                base07 = "#ccc4b3", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#cda198", -- Variables, errors, red
                base09 = "#cda198", -- Integers, constants, orange
                base0A = "#bdbea7", -- Classes, types, yellow
                base0B = "#a6bfad", -- Strings, green
                base0C = "#98cdc3", -- Support, regex, cyan
                base0D = "#98cdc5", -- Functions, keywords, blue
                base0E = "#cd98a7", -- Keywords, storage, magenta
                base0F = "#bebfa6", -- Deprecated, brown/yellow
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
