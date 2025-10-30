local jdtls = require("jdtls")

-- Get blink.cmp capabilities
local capabilities = require("blink.cmp").get_lsp_capabilities()

-- Find project root directory
local root_dir = vim.fs.dirname(vim.fs.find({
	"gradlew",
	".git",
	"mvnw",
	"pom.xml",
	"build.gradle",
	"build.gradle.kts",
}, { upward = true })[1])

local config = {
	cmd = { "jdtls" },
	root_dir = root_dir,
	capabilities = capabilities,

	-- Use the same keybindings as other LSPs
	on_attach = function(client, bufnr)
		-- Your keybindings will work automatically from LspAttach autocmd
	end,
}

-- Start or attach to the language server
jdtls.start_or_attach(config)
