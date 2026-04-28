require("config.options")
require("config.keymaps")
require("config.autocmds")

if vim.g.vscode then
	require("config.vscode")
else
	require("config.lazy")
end
