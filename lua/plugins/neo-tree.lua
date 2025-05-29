return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	lazy = false, -- neo-tree will lazily load itself
	---@module "neo-tree"
	---@type neotree.Config?
	opts = {
		enable_git_status = true,
		popup_border_style = "rounded",
		close_if_last_window = true,
		filesystem = {
			hijack_netrw_behavior = "open_default",
			follow_current_file = {
				enabled = true,
			},
			use_libuv_file_watcher = true,
		},
	},
}
