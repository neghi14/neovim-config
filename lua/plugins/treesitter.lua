return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c", "go", "lua", "make", "dockerfile", "html", "javascript", "json", "svelte", "tsx", "typescript", "vim", "vimdoc", "yaml" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
