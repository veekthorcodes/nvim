return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 40,
			},
			renderer = {
				group_empty = true,
				icons = {
					glyphs = {
						git = {
							unstaged = "✗",
							staged = "✓",
							unmerged = "",
							renamed = "➜",
							untracked = "★",
							deleted = "",
							ignored = "◌",
						},
					},
				},
			},
			diagnostics = {
				enable = true,
				show_on_dirs = true, -- Show diagnostics on folders too
				icons = {
					hint = "",
					info = "",
					warning = "",
					error = "",
				},
			},

			filters = {
				dotfiles = true,
			},
			update_focused_file = {
				enable = true,
			},
		})
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap=true, silent=true, desc="toggle nvim tree"})
	end,
}
