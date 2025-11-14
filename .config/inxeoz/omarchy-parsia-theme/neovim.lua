return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#2b363b", -- Default background
                base01 = "#657781", -- Lighter background (status bars)
                base02 = "#2b363b", -- Selection background
                base03 = "#657781", -- Comments, invisibles
                base04 = "#b3ccb3", -- Dark foreground
                base05 = "#ccb3b3", -- Default foreground
                base06 = "#ccb3b3", -- Light foreground
                base07 = "#b3ccb3", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#cda898", -- Variables, errors, red
                base09 = "#cda898", -- Integers, constants, orange
                base0A = "#cdbf98", -- Classes, types, yellow
                base0B = "#aeb7af", -- Strings, green
                base0C = "#98c4cd", -- Support, regex, cyan
                base0D = "#a0b4c5", -- Functions, keywords, blue
                base0E = "#cca999", -- Keywords, storage, magenta
                base0F = "#cdbf98", -- Deprecated, brown/yellow
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
