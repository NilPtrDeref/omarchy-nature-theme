return {
	{
		"f4z3r/gruvbox-material.nvim",
		name = "gruvbox-material",
		lazy = false,
		priority = 1000,
		opts = {
			contrast = "medium",
			italics = false,
			background = {
				transparent = true,
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox-material",
		},
	},
}
