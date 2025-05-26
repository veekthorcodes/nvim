return {
	{ "nvim-treesitter/nvim-treesitter", branch = "master", lazy = false, build = ":TSUpdate" },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}
