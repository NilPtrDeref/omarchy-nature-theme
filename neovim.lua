return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#121212", -- Default background
                base01 = "#5e5e5e", -- Lighter background (status bars)
                base02 = "#121212", -- Selection background
                base03 = "#5e5e5e", -- Comments, invisibles
                base04 = "#faf9f9", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#faf9f9", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#d58572", -- Variables, errors, red
                base09 = "#de9d8e", -- Integers, constants, orange
                base0A = "#bdbd89", -- Classes, types, yellow
                base0B = "#80b780", -- Strings, green
                base0C = "#927ece", -- Support, regex, cyan
                base0D = "#e4a067", -- Functions, keywords, blue
                base0E = "#ce7e8a", -- Keywords, storage, magenta
                base0F = "#dfdfc3", -- Deprecated, brown/yellow
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
