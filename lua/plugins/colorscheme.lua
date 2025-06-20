return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	config = function()
		vim.cmd("colorscheme catppuccin")
		require("catppuccin").setup({
			flavour = "auto", -- latte, frappe, macchiato, mocha
			background = {
				light = "latte",
				dark = "frappe",
			},
			transparent_background = true,
		})
	end,
}
