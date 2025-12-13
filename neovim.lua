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
				base01 = "#262626", -- Lighter background (Status bars, line numbers)
				base02 = "#424242", -- Selection background
				base03 = "#5e5e5e", -- Comments, invisibles
				base04 = "#d0d0d0", -- Dark foreground (UI text, status bar text)
				base05 = "#faf9f9", -- Default foreground
				base06 = "#ffffff", -- Light foreground (Bold text, bright accents)
				base07 = "#f0f0f0", -- Light background (Rarely used, very bright text)

				-- Accent colors (base08-base0F)
				base08 = "#cea07e", -- Variables, errors, red
				base09 = "#cea07e", -- Integers, constants, orange
				base0A = "#cece7e", -- Classes, types, yellow
				base0B = "#b7ce7e", -- Strings, green
				base0C = "#b8ce7e", -- Support, regex, cyan
				base0D = "#ce7e90", -- Functions, keywords, blue
				base0E = "#d08391", -- Keywords, storage, magenta
				base0F = "#e1e1b1", -- Deprecated, brown/yellow
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
