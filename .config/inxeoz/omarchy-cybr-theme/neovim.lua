return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#3b2b3b", -- Default background
                base01 = "#816581", -- Lighter background (status bars)
                base02 = "#3b2b3b", -- Selection background
                base03 = "#816581", -- Comments, invisibles
                base04 = "#ccb9b3", -- Dark foreground
                base05 = "#ccb9b3", -- Default foreground
                base06 = "#ccb9b3", -- Light foreground
                base07 = "#ccb9b3", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#cd9898", -- Variables, errors, red
                base09 = "#cd9898", -- Integers, constants, orange
                base0A = "#cdb498", -- Classes, types, yellow
                base0B = "#9fc6b8", -- Strings, green
                base0C = "#9cc9c6", -- Support, regex, cyan
                base0D = "#989fcd", -- Functions, keywords, blue
                base0E = "#c2a3b3", -- Keywords, storage, magenta
                base0F = "#cdb498", -- Deprecated, brown/yellow
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
