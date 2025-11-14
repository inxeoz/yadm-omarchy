return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#2b373b", -- Default background
                base01 = "#657a81", -- Lighter background (status bars)
                base02 = "#2b373b", -- Selection background
                base03 = "#657a81", -- Comments, invisibles
                base04 = "#ccccb3", -- Dark foreground
                base05 = "#ccccb3", -- Default foreground
                base06 = "#ccccb3", -- Light foreground
                base07 = "#ccccb3", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#c6aa9f", -- Variables, errors, red
                base09 = "#c8aa9d", -- Integers, constants, orange
                base0A = "#bcc5a0", -- Classes, types, yellow
                base0B = "#9ec89d", -- Strings, green
                base0C = "#a5c0b9", -- Support, regex, cyan
                base0D = "#9cacc9", -- Functions, keywords, blue
                base0E = "#cda798", -- Keywords, storage, magenta
                base0F = "#bdc79e", -- Deprecated, brown/yellow
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
